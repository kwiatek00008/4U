using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication2
{
    public partial class Form1 : Form
    {
        int x=0;  
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            x++;

            label1.Text = x.ToString(); // 1, zamienia x na string 2, zmienia wyświetlany text
            if (x > 0) label1.ForeColor = Color.Green; //zmienia kolor czcionki w label 1
            else if (x==0) label1.ForeColor = Color.Black;

        }

        private void button2_Click(object sender, EventArgs e)
        {
            x--;
            label1.Text = x.ToString();
            if (x < 0) label1.ForeColor = Color.Red;

            else if (x==0) label1.ForeColor = Color.Black;
        }

        private void Zeruj_Click(object sender, EventArgs e)
        {
            x = 0;
            label1.Text = x.ToString();
            if (x == 0) label1.ForeColor = Color.Black;

        }

        
    }
}
