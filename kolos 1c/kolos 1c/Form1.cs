using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace kolos_1c
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            double cenaB, cenaZ,a,wartosc,podatek ;
            int ilosc, b;

            if (double.TryParse(textBox1.Text, out a))
                cenaB = a;
            else
            {
                MessageBox.Show("Zla wartosc", "BLAD", MessageBoxButtons.OK);
                
                cenaB = 0;
            }



            if (checkBox1.Checked) podatek = 23;
            else if (checkBox2.Checked) podatek = 17;
            else podatek = 0;

            wartosc = cenaB * (podatek/100) + cenaB;

            wartosc=Math.Round(wartosc, 2);
            label3.Text = "wartosc " + wartosc.ToString();
        }

        private void hScrollBar1_Scroll(object sender, ScrollEventArgs e)
        {
            textBox1.Text = hScrollBar1.Value.ToString();
        }

     
    }
}
