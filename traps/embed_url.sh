#!/bin/bash
# Generar PDF con URL oculta que dispara un beacon
echo "Creando PDF trampa..."
echo "%PDF-1.4" >trap.pdf
echo "1 0 obj << /Type /Catalog /Pages 2 0 R >> endobj" >>trap.pdf
echo "2 0 obj << /Type /Pages /Kids [3 0 R] /Count 1 >> endobj" >>trap.pdf
echo "3 0 obj << /Type /Page /Parent 2 0 R /Contents 4 0 R /MediaBox [0 0 612 792] /Resources << /XObject << /Img1 5 0 R >> >> >> endobj" >>trap.pdf
echo "4 0 obj << /Length 50 >> stream" >>trap.pdf
echo "q 612 0 0 792 0 0 cm /Img1 Do Q" >>trap.pdf
echo "endstream endobj" >>trap.pdf
echo "5 0 obj << /Type /XObject /Subtype /Image /Width 1 /Height 1 /BitsPerComponent 8 /ColorSpace /DeviceRGB /Length 6 /Filter /FlateDecode >> stream" >>trap.pdf
echo "http://yourdomain.com/track" >>trap.pdf
echo "endstream endobj" >>trap.pdf
echo "trailer << /Root 1 0 R >>" >>trap.pdf
echo "PDF creado: trap.pdf"
