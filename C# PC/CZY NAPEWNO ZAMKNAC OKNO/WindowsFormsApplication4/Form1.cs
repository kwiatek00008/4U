using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DialogResult odp = MessageBox.Show("TREŚć", "TYTUŁ",MessageBoxButtons.OKCancel, MessageBoxIcon.Question);  
        }

        

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult x = MessageBox.Show("TAK?", "?", MessageBoxButtons.OKCancel);
            if(x!=DialogResult.OK)
            e.Cancel=true; //czy napewno zamknąć okno
            
        }
     
        
       }
    }

