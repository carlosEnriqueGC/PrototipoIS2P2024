-- numero de MDI mante y procesos
use siu;



INSERT INTO tbl_modulos VALUES
('9000', 'MDI ESCOLAR', 'MDI', 1)
;
 
-- -----APLICACIONES
INSERT INTO tbl_aplicaciones VALUES
('9000', 'MDI ESCOLAR', 'PARA MDI', '1'),
('9001', 'Mantenimiento ALUMNO', 'PARA MDI', '1'),
('9002', 'Mantenimiento CURSO', 'PARA MDI', '1'),
('9003', 'Proceso ASIGNACION CURSO Y ALUMNO', 'PARA MDI', '1')
;
 
-- -----ASIGNACIÓNES MODULO A APLICACION
INSERT INTO tbl_asignacionmoduloaplicacion VALUES
('9000', '9000'),
('9000', '9001'),
('9000', '9002'),
('9000', '9003')
;
 
-- -----PERMISOS DE APLICACIONES A PERFILES
INSERT INTO tbl_permisosAplicacionPerfil VALUES
('1', '9000', '1', '1', '1', '1', '1'),
('1', '9001', '1', '1', '1', '1', '1'),
('1', '9002', '1', '1', '1', '1', '1'),
('1', '9003', '1', '1', '1', '1', '1')
;