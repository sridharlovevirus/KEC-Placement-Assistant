<?php
use Box\Spout\Reader\ReaderFactory;
use Box\Spout\Common\Type;
require_once 'spout-2.4.3/src/Spout/Autoloader/autoload.php';
//if (!empty($_FILES['file']['name'])) {
      
    // Get File extension eg. 'xlsx' to check file is excel sheet
  //  $pathinfo = pathinfo($_FILES["file"]["name"]);
     
    // check file has extension xlsx, xls and also check
    // file is not empty
   //if (($pathinfo['extension'] == 'xlsx' || $pathinfo['extension'] == 'xls')
     //      && $_FILES['file']['size'] > 0 ) {
         
        // Temporary file name
      //  $inputFileName = $_FILES['file']['tmp_name'];
    $inputFileName="test/e.xlsx";
        // Read excel file by using ReadFactory object.
        $reader = ReaderFactory::create(Type::XLSX);
 
        // Open file
        $reader->open($inputFileName);
        $count = 1;
        $rows = array();
         
        // Number of sheet in excel file
        foreach ($reader->getSheetIterator() as $sheet) {
             
            // Number of Rows in Excel sheet
            foreach ($sheet->getRowIterator() as $row) {
 
                // It reads data after header. In the my excel sheet,
                // header is in the first row.
                if ($count >1){
                    // Data of excel sheet
                    $data['name'] = $row[0];
                   // $data['sname'] = $row[1];
					echo $data['name'];
				}
	  $count++;
			}
		}
        $reader->close();
 
    //} 
?>
