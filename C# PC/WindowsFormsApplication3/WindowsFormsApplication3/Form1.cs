using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void hScrollBar1_Scroll(object sender, ScrollEventArgs e)
        {
            panel1.BackColor=Color.FromArgb(hScrollBar1.Value,
                                            hScrollBar2.Value,
                                            hScrollBar3.Value);
            label4.Text = hScrollBar1.Value.ToString();
        }

        private void hScrollBar2_Scroll(object sender, ScrollEventArgs e)
        {
            panel1.BackColor = Color.FromArgb(hScrollBar1.Value,
                                            hScrollBar2.Value,
                                            hScrollBar3.Value);
            label5.Text = hScrollBar2.Value.ToString();
        }

        private void hScrollBar3_Scroll(object sender, ScrollEventArgs e)
        {
            panel1.BackColor = Color.FromArgb(hScrollBar1.Value,
                                            hScrollBar2.Value,
                                            hScrollBar3.Value);
            label6.Text = hScrollBar3.Value.ToString();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
