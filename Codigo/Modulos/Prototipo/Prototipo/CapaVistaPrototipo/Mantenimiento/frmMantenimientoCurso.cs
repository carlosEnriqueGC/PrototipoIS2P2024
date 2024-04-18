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
    public partial class frmMantenimientoCurso : Form
    {
        public frmMantenimientoCurso()
        {
            InitializeComponent();
            this.navegador1.config("cursos", this, "9002");
        }

        private void frmMantenimientoCurso_Load(object sender, EventArgs e)
        {

        }
    }
}
