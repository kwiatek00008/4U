﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Przelicznik_walut
{
    public partial class Form1 : Form
    {
        int x;
        double y,z;
        string xs;
        public Form1()
        {
            InitializeComponent();
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked) label1.Text = "EUR";
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked) label1.Text = "PLN";
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton3.Checked) label1.Text = "USD";
        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton4.Checked) label2.Text = "PLN";
        }

        private void radioButton5_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton5.Checked) label2.Text = "EUR";
        }

        private void radioButton6_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton6.Checked) label2.Text="USD"; 
        }

        private void button1_MouseClick(object sender, MouseEventArgs e)
        {


            xs = textBox1.Text;
            x = int.Parse(xs);

            if (radioButton1.Checked)
            {
                if     (radioButton4.Checked)
                {y=x;     textBox2.Text=y.ToString(); }
                else if(radioButton5.Checked)
                {y=x/4.2; textBox2.Text=y.ToString(); }
                else if(radioButton6.Checked)
                {y=x/3.2; textBox2.Text=y.ToString(); }
            }
            else if (radioButton2.Checked)
            {
                if     (radioButton4.Checked)
                {y=x*4.2; textBox2.Text=y.ToString(); }
                else if(radioButton5.Checked)
                {y=x;     textBox2.Text=y.ToString(); }
                else if(radioButton6.Checked)
                { z = x * 4.2; y = z / 3.2; textBox2.Text = y.ToString(); }
            };
            if (radioButton3.Checked)
            {
                if     (radioButton4.Checked)
                {y=x*3.2; textBox2.Text=y.ToString(); }
                else if(radioButton5.Checked)
                {z=x*3.2; y=z/4.20;     textBox2.Text=y.ToString(); }
                else if(radioButton6.Checked)
                {y=x; textBox2.Text = y.ToString(); }
            };

        }
    }
}
