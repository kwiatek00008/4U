using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Kolos_1a
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int a, b, c;
            
            if (int.TryParse(textBox1.Text, out c))
                a = int.Parse(textBox1.Text);
            else a = 0;
            b = a / 60;

            textBox2.Text = b.ToString();

        }

        private void hScrollBar1_Scroll(object sender, ScrollEventArgs e)
        {
            textBox1.Text = hScrollBar1.Value.ToString();
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
            {
                hScrollBar1.Enabled = false;
            }
            if (checkBox1.Checked == false)
                hScrollBar1.Enabled = true;
        }

       
    }
}
