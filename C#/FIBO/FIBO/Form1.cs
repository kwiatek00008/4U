using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FIBO
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
          int  szukana = Int32.Parse(textBox1.Text);
            int fib=1, fib1=1, fib2=1,  n=2;
            string fibonacci;
            if (szukana > 0)
            {
                if (szukana == 1 || szukana == 2) fib = 1;
                else if (szukana >2)
                    while (szukana > n)
                    {
                        fib = fib1 + fib2;
                        fib1 = fib2;
                        fib2 = fib;
                        n++;
                    }
            }
            
            fibonacci = "" + fib;
            label1.Text = fibonacci;
            
        }
    }
}
