﻿using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.EntityFrameworkCore;
using Pomelo.EntityFrameworkCore.MySql;
using System.ComponentModel.DataAnnotations;

namespace kanbanboard
{

    public class Uzytkownik
    {
        [Key]
        public string login { get; set; }
    }
    public class Karta
    {
        [Key]   //oznacenie klucza
        public int task_id { get; set; }
        public string title { get; set; }
        public string description { get; set; }
        public DateTime creation_date { get; set; }
        public string assigned_user { get; set; }
        public string Status { get; set; }
    }

    // łączenie się z bazą danych
    public class KanbanDbContext : DbContext
    {
        public DbSet<Karta> Zadania { get; set; }
        public DbSet<Uzytkownik> users { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            //haslo w plain text do zmainy
            const string polaczenieSQL = "server=127.0.0.1;database=kanbanboard;user=kanbanboard;password=admin1234";
            optionsBuilder.UseMySql(polaczenieSQL,ServerVersion.AutoDetect(polaczenieSQL));
        }
    }
    //klasy do grupowania zadań 
    public class KanbanBoard
    {
        public List<Karta> Nowe { get; set; }
        public List<Karta> Zaplanowane { get; set; }
        public List<Karta> WTrakcie { get; set; }
        public List<Karta> Testowanie { get; set; }
        public List<Karta> Ukonczone { get; set; }
    }



    public partial class MainWindow : Window
    {
        private KanbanDbContext _dbContext;

        public MainWindow()
        {
            InitializeComponent();
            _dbContext = new KanbanDbContext();
            LoadKanbanData();
        }

        private void LoadKanbanData()
        {
            var wszystkieZadania = _dbContext.Zadania.ToList();
            var kanbanBoard = new KanbanBoard
            {
                Nowe = wszystkieZadania.Where(z => z.Status == "Nowe").ToList(),
                Zaplanowane = wszystkieZadania.Where(z => z.Status == "Zaplanowane").ToList(),
                WTrakcie = wszystkieZadania.Where(z => z.Status == "WTrakcie").ToList(),
                Testowanie = wszystkieZadania.Where(z => z.Status == "Testowanie").ToList(),
                Ukonczone = wszystkieZadania.Where(z => z.Status == "Ukonczone").ToList()
            };

            KanbanDataGrid.ItemsSource = new List<KanbanBoard> { kanbanBoard };
        }

        private void EditTask_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var task = button.DataContext as Karta;

            if (task == null)
            {
                MessageBox.Show("Nie wybrano zadania do edycji.");
                return;
            }

            var editTaskWindow = new EditTaskWindow(task);
            editTaskWindow.ShowDialog();

            // Odśwież dane po zamknięciu okna
            LoadKanbanData();
        }
        private void RefreshButton_Click(object sender, RoutedEventArgs e)
        {
            LoadKanbanData();
        }
        private void AddTask_Click(object sender, RoutedEventArgs e)
        {
            var addTaskWindow = new AddTaskWindow();
            if (addTaskWindow.ShowDialog() == true)
            {
                // Wyświetl okno do wprowdzenia danych
                var newTask = addTaskWindow.NewTask;

                if (newTask != null)
                {
                    // Dodaj  do bazy danych
                    _dbContext.Zadania.Add(newTask);
                    _dbContext.SaveChanges();

                    // Odświerzanie widoku oraz potwierdzenie dodania 
                    LoadKanbanData();
                    MessageBox.Show("Dodano nowe zadanie!", "Sukces", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
        }
        private void ShowTaskDetails_Click(object sender, RoutedEventArgs e)
        {
            // Pobierz zadanie z CommandParameter
            var button = sender as Button;
            if (button?.CommandParameter is Karta selectedTask)
            {
                // Otwórz okno szczegółów zadania
                var taskDetailsWindow = new TaskDetailsWindow(selectedTask);
                taskDetailsWindow.ShowDialog();
            }
            else
            {
                MessageBox.Show("Nie udało się otworzyć szczegółów zadania.", "Błąd", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void DeleteTaskMenu_Click(object sender, RoutedEventArgs e)
        {
            var deleteTaskWindow = new DeleteTaskWindow();
            deleteTaskWindow.ShowDialog();

            // Po zamknięciu okna odśwież widok z zadaniami
            LoadKanbanData();
        }


    }

}