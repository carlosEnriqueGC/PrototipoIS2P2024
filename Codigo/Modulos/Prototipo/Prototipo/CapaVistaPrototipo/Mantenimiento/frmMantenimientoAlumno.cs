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
    public partial class Prueba_1 : Form
    {
        public Prueba_1()
        {
            InitializeComponent();
            this.navegador1.config("alumnos", this, "");
            this.navegador1._initSeguridad();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}
