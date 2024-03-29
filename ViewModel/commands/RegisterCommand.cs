﻿using NotesAPP.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace NotesAPP.ViewModel.commands
{
    public class RegisterCommand : ICommand
    {
        public LoginVM VM { get; set; }
        public event EventHandler CanExecuteChanged;

        public RegisterCommand(LoginVM vm)
        {
            VM = vm;
        }

        public bool CanExecute(object parameter)
        {
            var user = parameter as User;

            //if (string.IsNullOrEmpty(user.Username))
            //    return false;
            //if (string.IsNullOrEmpty(user.Password))
            //    return false;
            //if (string.IsNullOrEmpty(user.Email))
            //    return false;
            //if (string.IsNullOrEmpty(user.Lastname))
            //    return false;
            //if (string.IsNullOrEmpty(user.Name))
            //    return false;
            return true;
        }

        public void Execute(object parameter)
        {
            VM.Register();
        }
    }
}
