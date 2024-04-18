using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVistaPrototipo.Mantenimiento
{
    public partial class frmMantenimiento1 : Form
    {
        public frmMantenimiento1()
        {
            InitializeComponent();
            this.navegador1.config("alumnos", this, "9001");
        }

        private void frmMantenimiento1_Load(object sender, EventArgs e)
        {

        }
    }
}
