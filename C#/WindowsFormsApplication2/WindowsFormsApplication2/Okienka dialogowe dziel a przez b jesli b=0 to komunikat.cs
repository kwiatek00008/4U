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
        public Form1()
        {
            InitializeComponent();
        }
       public void licz()
          {
              int a, b;
              float c;
              a = Int32.Parse(textBox1.Text);
              b = Int32.Parse(textBox2.Text);
           if(b==0)
           {
               DialogResult w = MessageBox.Show("B nie moze byc zero", "X", MessageBoxButtons.OK);
           }
           else 
           {
               c = (float)a / b;
               label1.Text = c.ToString();
           }
          }

        private void button1_Click(object sender, EventArgs e)
        {
            int det;
            if     (!int.TryParse(textBox1.Text, out det ))  // sprawdza czy bedzie blad przy parsowaniu
            {
                DialogResult q = MessageBox.Show("BLAD", "X", MessageBoxButtons.OKCancel);
            if (q==DialogResult.OK) textBox1.Text="";
            }
            else if (!int.TryParse(textBox2.Text, out det))
            {
                DialogResult q = MessageBox.Show("BLAD", "X", MessageBoxButtons.OKCancel);
                if (q == DialogResult.OK) textBox2.Text = "";
            }
            else licz();
        }
    }
}
