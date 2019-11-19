using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace kolos_1b
{
    public partial class Form1 : Form
    {
        public double r;
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            double a, sr,pom,pol,obw;

            if (double.TryParse(textBox1.Text, out a))
                r = a;
            else r = 0;
            if (checkBox1.Checked)
                r = r / 2;
           

            pol = Math.PI * r * r;
            obw = 2*Math.PI*r;

            label1.Text = "POLE  " + pol.ToString();
            label2.Text = "OBW   " + obw.ToString();

        }

        private void hScrollBar1_Scroll(object sender, ScrollEventArgs e)
        {
            textBox1.Text = hScrollBar1.Value.ToString();

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

            
        }
    }
}
