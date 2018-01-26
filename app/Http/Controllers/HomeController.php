<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Staff;
use App\Kualitas;
use Illuminate\Support\Facades\DB;
use ConsoleTVs\Charts\Facades\Charts;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */


   public function index()
    {                
      $totaluser=Staff::count();
         $testing = DB::table('Kualitas')->select('Kualitas.produktifitas','Kualitas.inisiatif','Kualitas.ketelitian','Kualitas.efisiensi','Kualitas.kerjasama','Kualitas.tanggung_jawab','Kualitas.kedisiplinan','Kualitas.kehadiran','staff.nama','Kualitas.id_staff','staff.nama','staff.divisi','Kualitas.tahun')
        ->join('staff','staff.id','=','Kualitas.id_staff')
        ->get();
        $cv=count($testing);
        $sum=0;
        $sum1=0;
        $jtotal=0;
        for($i=0;$i<$cv;$i++)
        {
            $temp=$testing[$i]; 
            $tahun=$temp->tahun;
            $name=$temp->nama;
            $divisi=$temp->divisi;
            $v1=$temp->produktifitas;
            $v2=$temp->inisiatif;
            $v3=$temp->ketelitian;
            $v4=$temp->efisiensi;
            $v5=$temp->kerjasama;
            $v6=$temp->tanggung_jawab;
            $v7=$temp->kedisiplinan;
            $v8=$temp->kehadiran;
            $v9=$temp->id_staff;
            
            $hasilakhir=(($v1+$v2)*0.3+($v3+$v4)*0.2+($v5+$v6)*0.3+($v7+$v8)*0.2)*5;

            $array[$i] = array('id'=>$v9,'nama'=>$name,'divisi'=>$divisi,'total'=>$hasilakhir,'tahun'=>$tahun,);  
        }





        for($i=0;$i<$cv;$i++){
          $temp=$testing[$i]; 
          $tahun=$temp->tahun;
          if($tahun=='2017'){
            $name=$temp->nama;
            $divisi=$temp->divisi;
            $v1=$temp->produktifitas;
            $v2=$temp->inisiatif;
            $v3=$temp->ketelitian;
            $v4=$temp->efisiensi;
            $v5=$temp->kerjasama;
            $v6=$temp->tanggung_jawab;
            $v7=$temp->kedisiplinan;
            $v8=$temp->kehadiran;
            $v9=$temp->id_staff;
            
            $hasilakhir=(($v1+$v2)*0.3+($v3+$v4)*0.2+($v5+$v6)*0.3+($v7+$v8)*0.2)*5;
            $jtotal+=$hasilakhir;
            $array1[$i] = array('id'=>$v9,'nama'=>$name,'divisi'=>$divisi,'total'=>$hasilakhir,'tahun'=>$tahun,'v1'=>$v1,'v2'=>$v2,'v3'=>$v3,'v4'=>$v4,'v5'=>$v5,'v6'=>$v6,'v7'=>$v7,'v8'=>$v8);  
        
        // kondisi menghitung jumlah staff
            if($hasilakhir > 70) 
            {
                $sum+=1;
            }
            else if($hasilakhir < 60)
            {
                $sum1+=1;
            }

          }   
            
      
        }
      

        //TOP5
        $collection = collect($array1);
        $sorted = $collection->sortByDesc('total');
        $sorted->values('total')->all();
        $chunk = $sorted->take(5);

        //MIDDLE 
        $collection=collect($array1);
        $collectionmiddle=$collection->where('total','<','70' ,'||', 'total','>','60');
        //DOWN5
        $collectiondown = collect($array1);
        $sorteddown = $collectiondown->sortBy('total');
        $sorteddown->values('total')->all();
        $chunkdown = $sorteddown->all();
  
//grafik perizinan
        $get_tahun = Kualitas::select('kualitas.tahun')
                ->join('staff','staff.id','=','Kualitas.id_staff')
                ->where('divisi','perizinan')
                ->groupBy('tahun')
                ->get();
        $count_tahun=count($get_tahun);

        $sums=array();
        $jumlahAnggota=array();
        foreach ($get_tahun as $gets) {
          $sums[$gets->tahun]=0;
          $jumlahAnggota[$gets->tahun]=0;
        }
        

        
        $jumlaharray=count($array);
        for($j=0;$j<$jumlaharray;$j++){
          $temp=$array[$j];
          $divisi=$temp['divisi'];
          $tahun=$temp['tahun'];

          if($divisi=='perizinan'){
            $tot=$temp['total'];
            $sums[$tahun]+=$tot;
            $jumlahAnggota[$tahun]++;
          }
        }
        $counter=0;
        foreach ($get_tahun as $gets) {
          $sums[$gets->tahun]=number_format($sums[$gets->tahun]/$jumlahAnggota[$gets->tahun], 2, '.', ' ');
          $tahuns[$counter]=$gets->tahun;
          $counter++;
        }
        $counter=0;
        foreach ($get_tahun as $gets) {
          $sums[$gets->tahun]=(string)$sums[$gets->tahun];
          $tahuns[$counter]=(string)$tahuns[$counter];
          $counter++;
        }

        $chart=Charts::create('line', 'highcharts')
          ->labels($tahuns)
          ->elementLabel("RATING KINERJA")
          ->title('Kinerja Divisi Perizinan')
          ->values($sums)
          ->dimensions(900,500)
          ->responsive(false);


// kesehatan
         $get_tahun1 = Kualitas::select('kualitas.tahun')
                ->join('staff','staff.id','=','Kualitas.id_staff')
                ->where('divisi','kesehatan')
                ->groupBy('tahun')
                ->get();

        $count_tahun=count($get_tahun1);

        $sums1=array();
        $jumlahAnggota=array();
        foreach ($get_tahun1 as $gets) {
          $sums1[$gets->tahun]=0;
          $jumlahAnggota[$gets->tahun]=0;
        }
        

        
        $jumlaharray=count($array);
        for($j=0;$j<$jumlaharray;$j++){
          $temp=$array[$j];
          $divisi=$temp['divisi'];
          $tahun=$temp['tahun'];

          if($divisi=='kesehatan'){
            $tot=$temp['total'];
            $sums1[$tahun]+=$tot;
            $jumlahAnggota[$tahun]++;
          }
        }
        $counter=0;
        foreach ($get_tahun1 as $gets) {
          $sums1[$gets->tahun]=number_format($sums1[$gets->tahun]/$jumlahAnggota[$gets->tahun], 2, '.', ' ');
          $tahuns1[$counter]=$gets->tahun;
          $counter++;
        }
        $counter=0;
        foreach ($get_tahun1 as $gets) {  
          $sums1[$gets->tahun]=(string)$sums1[$gets->tahun];
          $tahuns1[$counter]=(string)$tahuns1[$counter];
          $counter++;
        }

          // $sums1 = number_format($sums1, 2, ',', ' '); 

        $chart1=Charts::create('line', 'highcharts')
          ->labels($tahuns1)
          ->elementLabel("RATING KINERJA")
          ->title('Kinerja Divisi Kesehatan')
          ->values($sums1)
          ->dimensions(900,500)
          ->responsive(false);

//kependudukan dan pencatatan
        $get_tahun2 = Kualitas::select('kualitas.tahun')
                ->join('staff','staff.id','=','Kualitas.id_staff')
                ->where('divisi','kependudukan dan pencatatan')
                ->groupBy('tahun')
                ->get();

        $count_tahun=count($get_tahun2);

        $sums2=array();
        $jumlahAnggota=array();
        foreach ($get_tahun2 as $gets) {
          $sums2[$gets->tahun]=0;
          $jumlahAnggota[$gets->tahun]=0;
        }
        
        $jumlaharray=count($array);
        for($j=0;$j<$jumlaharray;$j++){
          $temp=$array[$j];
          $divisi=$temp['divisi'];
          $tahun=$temp['tahun'];

          if($divisi=='kependudukan dan pencatatan'){
            $tot=$temp['total'];
            $sums2[$tahun]+=$tot;
            $jumlahAnggota[$tahun]++;
          }
        }
        $counter=0;
        foreach ($get_tahun2 as $gets) {
          $sums2[$gets->tahun]=number_format($sums2[$gets->tahun]/$jumlahAnggota[$gets->tahun], 2, '.', ' ');
          $tahuns2[$counter]=$gets->tahun;
          $counter++;
        }
        $counter=0;
        foreach ($get_tahun2 as $gets) {
          $sums2[$gets->tahun]=(string)$sums2[$gets->tahun];
          $tahuns2[$counter]=(string)$tahuns2[$counter];
          $counter++;
        }

        // dd($sums, $tahuns2);
        $chart2=Charts::create('line', 'highcharts')
          ->labels($tahuns2)
          ->elementLabel("RATING KINERJA")
          ->title('Kinerja Divisi kependudukan dan pencatatan')
          ->values($sums2)
          ->dimensions(900,500)
          ->responsive(false);


//ketenagakerjaan sosial
        $get_tahun3 = Kualitas::select('kualitas.tahun')
                ->join('staff','staff.id','=','Kualitas.id_staff')
                ->where('divisi','ketenagakerjaan sosial')
                ->groupBy('tahun')
                ->get();

        $count_tahun=count($get_tahun3);

        $sums3=array();
        $jumlahAnggota=array();
        foreach ($get_tahun3 as $gets) {
          $sums3[$gets->tahun]=0;
          $jumlahAnggota[$gets->tahun]=0;
        }
        
        $jumlaharray=count($array);
        for($j=0;$j<$jumlaharray;$j++){
          $temp=$array[$j];
          $divisi=$temp['divisi'];
          $tahun=$temp['tahun'];

          if($divisi=='ketenagakerjaan sosial'){
            $tot=$temp['total'];
            $sums3[$tahun]+=$tot;
            $jumlahAnggota[$tahun]++;
          }
        }
        $counter=0;
        foreach ($get_tahun3 as $gets) {
          $sums3[$gets->tahun]=number_format($sums3[$gets->tahun]/$jumlahAnggota[$gets->tahun], 2, '.', ' ');
          $tahuns3[$counter]=$gets->tahun;
          $counter++;
        }
        $counter=0;
        foreach ($get_tahun3 as $gets) {
          $sums3[$gets->tahun]=(string)$sums3[$gets->tahun];
          $tahuns3[$counter]=(string)$tahuns3[$counter];
          $counter++;
        }

        // dd($sums, $tahuns3);
        $chart3=Charts::create('line', 'highcharts')
          ->labels($tahuns3)
          ->elementLabel("RATING KINERJA")
          ->title('Kinerja Divisi ketenagakerjaan Sosial')
          ->values($sums3)
          ->dimensions(900,500)
          ->responsive(false);

//Hubungan Masyarakat
         $get_tahun4 = Kualitas::select('kualitas.tahun')
                ->join('staff','staff.id','=','Kualitas.id_staff')
                ->where('divisi','Hubungan Masyarakat')
                ->groupBy('tahun')
                ->get();

        $count_tahun=count($get_tahun4);

        $sums4=array();
        $jumlahAnggota=array();
        foreach ($get_tahun4 as $gets) {
          $sums4[$gets->tahun]=0;
          $jumlahAnggota[$gets->tahun]=0;
        }
        
        $jumlaharray=count($array);
        for($j=0;$j<$jumlaharray;$j++){
          $temp=$array[$j];
          $divisi=$temp['divisi'];
          $tahun=$temp['tahun'];

          if($divisi=='Hubungan Masyarakat'){
            $tot=$temp['total'];
            $sums4[$tahun]+=$tot;
            $jumlahAnggota[$tahun]++;
          }
        }
        $counter=0;
        foreach ($get_tahun4 as $gets) {
          $sums4[$gets->tahun]=number_format($sums4[$gets->tahun]/$jumlahAnggota[$gets->tahun], 2, '.', ' ');
          $tahuns4[$counter]=$gets->tahun;
          $counter++;
        }
        $counter=0;
        foreach ($get_tahun4 as $gets) {
          $sums4[$gets->tahun]=(string)$sums4[$gets->tahun];
          $tahuns4[$counter]=(string)$tahuns4[$counter];
          $counter++;
        }

        // dd($sums, $tahuns4);
        $chart4=Charts::create('line', 'highcharts')
          ->labels($tahuns4)
          ->elementLabel("RATING KINERJA")
          ->title('Kinerja Divisi Hubungan Masyarakat')
          ->values($sums4)
          ->dimensions(900,500)
          ->responsive(false);


//pendapatan daerah
          $get_tahun5 = Kualitas::select('kualitas.tahun')
                ->join('staff','staff.id','=','Kualitas.id_staff')
                ->where('divisi','pendapatan daerah')
                ->groupBy('tahun')
                ->get();

        $count_tahun=count($get_tahun5);

        $sums5=array();
        $jumlahAnggota=array();
        foreach ($get_tahun5 as $gets) {
          $sums5[$gets->tahun]=0;
          $jumlahAnggota[$gets->tahun]=0;
        }
        
        $jumlaharray=count($array);
        for($j=0;$j<$jumlaharray;$j++){
          $temp=$array[$j];
          $divisi=$temp['divisi'];
          $tahun=$temp['tahun'];

          if($divisi=='pendapatan daerah'){
            $tot=$temp['total'];
            $sums5[$tahun]+=$tot;
            $jumlahAnggota[$tahun]++;
          }
        }
        $counter=0;
        foreach ($get_tahun5 as $gets) {
          $sums5[$gets->tahun]=number_format($sums5[$gets->tahun]/$jumlahAnggota[$gets->tahun], 2, '.', ' ');
          $tahuns5[$counter]=$gets->tahun;
          $counter++;
        }
        $counter=0;
        foreach ($get_tahun5 as $gets) {
          $sums5[$gets->tahun]=(string)$sums5[$gets->tahun];
          $tahuns5[$counter]=(string)$tahuns5[$counter];
          $counter++;
        }

        // dd($sums, $tahuns5);
        $chart5=Charts::create('line', 'highcharts')
          ->labels($tahuns5)
          ->elementLabel("RATING KINERJA")
          ->title('Kinerja Divisi Pendapatan Daerah')
          ->values($sums5)
          ->dimensions(900,500)
          ->responsive(false);
        
        $mean=number_format($jtotal/$totaluser,2);

return view('dashboard', ['chart' => $chart,'chart1' => $chart1,'chart2' => $chart2,'chart3' => $chart3,'chart4' => $chart4,'chart5' => $chart5,'totaluser'=>$totaluser, 'sum'=>$sum, 'sum1'=>$sum1,'mean'=>$mean,'chunk'=>$chunk,'chunkdown'=>$chunkdown,]);
    }
}