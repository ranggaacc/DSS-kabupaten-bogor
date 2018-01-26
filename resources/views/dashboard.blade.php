@extends('layouts/master')
@section('title','Dashboard')
@section('content')
<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<div class="col-lg-12">
						<!-- MULTI CHARTS -->
						<div class="panel">
							<div class="panel-heading">
								
								<div class="right">
									<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
									<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
								</div>
							</div>
							<div class="panel-body">
							<div class="row">
									<div class="col-md-3">
										<div class="metric">
											<span class="icon"><i class="fa fa-users"></i></span>
											<p>
												<span class="number">{{$totaluser}}</span>
												<span class="title">Total Staff Kantor Kab.Bogor</span>
											</p>
										</div>
									</div>
									<div class="col-md-3">
										<div class="metric">
											<span class="icon bg-warning"><i class="fa fa-user-plus"></i></span>
											<p>
												<span class="number">{{$sum}}</span>
												<span class="title">Jumlah Staff Kualitas > 70</span>
											</p>
										</div>
									</div>
									<div class="col-md-3">
										<div class="metric">
											<span class="icon"><i class="fa fa-user-times"></i></span>
											<p>
												<span class="number">{{$sum1}}</span>
												<span class="title">Jumlah Staff Kualitas < 60</span>
											</p>
										</div>
									</div>
									<div class="col-md-3">
										<div class="metric">
											<span class="icon"><i class="fa fa-bar-chart"></i></span>
											<p>
												<span class="number">{{$mean}}</span>
												<span class="title">Rata-rata Nilai Kualitas</span>
											</p>
										</div>
									</div>
								</div>
									<ul class="nav nav-tabs">
									    <li class="active"><a data-toggle="tab" href="#menu1">Perizinan</a></li>
									    <li><a data-toggle="tab" href="#menu2">Kesehatan</a></li>
									    <li><a data-toggle="tab" href="#menu3">Kependudukan</a></li>
									    <li><a data-toggle="tab" href="#menu4">Ketenagakerjaan</a></li>
									    <li><a data-toggle="tab" href="#menu5">Humas</a></li>
									    <li><a data-toggle="tab" href="#menu6">Pendapatan Daerah</a></li>
									  </ul>
									  <div class="tab-content">
									    <div id="menu1" class="tab-pane fade in active">
											{!! Charts::assets() !!}
			                                <center>
			                                    {!! $chart->render() !!}
			                                </center>
									    </div>
									    <div id="menu2" class="tab-pane fade">
											{!! Charts::assets() !!}
			                                <center>
			                                    {!! $chart1->render() !!}
			                                </center>
									    </div>
									  	<div id="menu3" class="tab-pane fade">
											{!! Charts::assets() !!}
			                                <center>
			                                    {!! $chart2->render() !!}
			                                </center>
									    </div>
									  	<div id="menu4" class="tab-pane fade">
											{!! Charts::assets() !!}
			                                <center>
			                                    {!! $chart3->render() !!}
			                                </center>
									    </div>
									  	<div id="menu5" class="tab-pane fade">
											{!! Charts::assets() !!}
			                                <center>
			                                    {!! $chart4->render() !!}
			                                </center>
									    </div>
									    <div id="menu6" class="tab-pane fade">
											{!! Charts::assets() !!}
			                                <center>
			                                    {!! $chart5->render() !!}
			                                </center>
									    </div>
									 </div>
        						</div>
							</div>
						
						<!-- END MULTI CHARTS -->
					</div>				        
					<div class="row">
						<div class="col-lg-12">
							<!-- RECENT PURCHASES -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Tabel TOP 5 Pegawai Dengan Kinerja Sangat Baik</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body no-padding">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>No</th>
												<th>Nama Staff</th>
												<th>Divisi</th>
												<th><center>Rate Kinerja</center></th>
												<th>Status</th>
												<th>Action</th>
											</tr>
										</thead>
										
										<tbody>
											<?php $no=0; ?>
											@foreach($chunk as $chun)
											<tr>
											<?php $no++;?>
												<td>{{$no}}</td>
												<td>{{$chun['nama']}}</td>
												<td>{{$chun['divisi']}}</td>
												<td><center>{{$chun['total']}}</center></td>
												<td><span class="label label-success">REKOMENDASI NAIK JABATAN</span></td>
												<td><a class="btn btn-xs btn-primary" data-toggle="modal" data-target="#staff{{$chun['id']}}"><i class="glyphicon glyphicon-eye-open"></i> View</a></td>
											</tr>
											@endforeach
										</tbody>
									</table>
									<div class="panel-footer">
										<div class="row">
										<h4></h4>
										</div>
									</div>
								</div>
								
							</div>
							<!-- END RECENT PURCHASES -->
						</div>
					</div>

					<div class="row">
						<div class="col-lg-12">
							<!-- RECENT PURCHASES -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Tabel Pegawai Dengan Kinerja Baik</h3> KINERJA < 70 DAN > 60
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body no-padding">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>No</th>
												<th>Nama Staff</th>
												<th>Divisi</th>
												<th><center>Rate Kinerja</center></th>
												<th>Status</th>
												<th>Action</th>

											</tr>
										</thead>
										<tbody>
										<?php $no1=0; ?>
										@foreach($chunkdown as $chun1)
											@if($chun1['total']<70 && $chun1['total']>60)
												<?php $no1++; ?>
													<tr>
														<td>{{$no1}}</a></td>
														<td>{{$chun1['nama']}}</td>
														<td>{{$chun1['divisi']}}</td>
														<td><center>{{$chun1['total']}}</center></td>
														<td><span class="label label-warning">REKOMENDASI NAIK GAJI</span></td>
														<td><a class="btn btn-xs btn-primary" data-toggle="modal" data-target="#staff{{$chun1['id']}}"><i class="glyphicon glyphicon-eye-open"></i> View</a></td>
													</tr>
											@endif
										@endforeach
											
										</tbody>

									</table>
									{{-- {{ $chunkdown->links() }} --}}
								</div>
								<div class="panel-footer">
									<div class="row">
										
									</div>
								</div>
							</div>
							<!-- END RECENT PURCHASES -->
						</div>
					</div>
				<!-- END MAIN CONTENT -->
					<div class="row">
						<div class="col-lg-12">
							<!-- RECENT PURCHASES -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Tabel Pegawai Dengan Kinerja Buruk</h3> KINERJA < 60
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body no-padding">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>No</th>
												<th>Nama Staff</th>
												<th>Divisi</th>
												<th><center>Rate Kinerja</center></th>
												<th>Status</th>
												<th>Action</th>

											</tr>
										</thead>
										<tbody>
										<?php $no1=0; ?>
										@foreach($chunkdown as $chun1)
											@if($chun1['total']<60)
												<?php $no1++; ?>
													<tr>
														<td>{{$no1}}</a></td>
														<td>{{$chun1['nama']}}</td>
														<td>{{$chun1['divisi']}}</td>
														<td><center>{{$chun1['total']}}</center></td>
														<td><span class="label label-danger">Peringatan</span></td>
														<td><a class="btn btn-xs btn-primary" data-toggle="modal" data-target="#staff{{$chun1['id']}}"><i class="glyphicon glyphicon-eye-open"></i> View</a></td>
													</tr>
											@endif
										@endforeach
											
										</tbody>

									</table>
									{{-- {{ $chunkdown->links() }} --}}
								</div>
								<div class="panel-footer">
									<div class="row">
										
									</div>
								</div>
							</div>
							<!-- END RECENT PURCHASES -->
						</div>
					</div>
				</div>
				<!-- END MAIN CONTENT -->
			</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
	</div>


<?php $no=0; ?>
@foreach($chunk as $chun)
<tr>
<?php $no++;?>
	<!-- Modal Detail Pegawai TOP 5-->
              <div class="modal fade in" id="staff{{$chun['id']}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" value="">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <!-- Modal Header -->
                            <div class="modal-header hidden-print">
                                <button type="button" class="close" data-dismiss="modal">
                                       <span aria-hidden="true">&times;</span>
                                       <span class="sr-only">Close</span>
                                </button>
                            </div>
                            
                            <!-- Modal Body -->
                              <div class="modal-body">  
                                <div class="panel panel-lg-default">
                                  <div class="table-responsive">        
                                    <table class="table table-striped">
                                          <tr style="">
                                            <td colspan="2" align="center" ><h5 style="font-family:roboto; color:black;">DETAIL STAFF TOP 5 DENGAN KINERJA "SANGAT BAIK"</h5></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Nama Staff:</b></td>
                                            <td align="left"><b>{{$chun['nama']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Divisi</b></td>
                                            <td align="left"><b>{{$chun['divisi']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Produktifitas</b></td>
                                            <td align="left"><b>{{$chun['v1']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Inisiatif</b></td>
                                            <td align="left"><b>{{$chun['v2']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Ketelitian</b></td>
                                            <td align="left"><b>{{$chun['v3']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Efisiensi</b></td>
                                            <td align="left"><b>{{$chun['v4']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Kerjasama</b></td>
                                            <td align="left"><b>{{$chun['v5']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Tanggung Jawab</b></td>
                                            <td align="left"><b>{{$chun['v6']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Kedisiplinan</b></td>
                                            <td align="left"><b>{{$chun['v7']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Kehadiran</b></td>
                                            <td align="left"><b>{{$chun['v8']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Rate Kinerja</b></td>
                                            <td align="left"><b>{{$chun['total']}}</b></td>
                                          </tr>                                         
                                    </table>
                                    </div>
                                  </div>              
                              </div>
                            <div class="modal-footer">
                        </div>
                    </div>
                </div>
              </div>

@endforeach

<?php $no1=0; ?>
@foreach($chunkdown as $chun1)
	@if($chun1['total']<70 && $chun1['total']>60)
		<?php $no1++; ?>
<!-- Modal Detail Pegawai BURUK-->
              <div class="modal fade in" id="staff{{$chun1['id']}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" value="">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <!-- Modal Header -->
                            <div class="modal-header hidden-print">
                                <button type="button" class="close" data-dismiss="modal">
                                       <span aria-hidden="true">&times;</span>
                                       <span class="sr-only">Close</span>
                                </button>
                            </div>
                            
                            <!-- Modal Body -->
                              <div class="modal-body">  
                                <div class="panel panel-lg-default">
                                  <div class="table-responsive">        
                                    <table class="table table-striped">
                                          <tr style="">
                                            <td colspan="2" align="center" ><h5 style="font-family:roboto; color:black;">DETAIL STAFF DENGAN KINERJA "BAIK"</h5></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Nama Staff:</b></td>
                                            <td align="left"><b>{{$chun1['nama']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Divisi</b></td>
                                            <td align="left"><b>{{$chun1['divisi']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Produktifitas</b></td>
                                            <td align="left"><b>{{$chun1['v1']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Inisiatif</b></td>
                                            <td align="left"><b>{{$chun1['v2']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Ketelitian</b></td>
                                            <td align="left"><b>{{$chun1['v3']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Efisiensi</b></td>
                                            <td align="left"><b>{{$chun1['v4']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Kerjasama</b></td>
                                            <td align="left"><b>{{$chun1['v5']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Tanggung Jawab</b></td>
                                            <td align="left"><b>{{$chun1['v6']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Kedisiplinan</b></td>
                                            <td align="left"><b>{{$chun1['v7']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Kehadiran</b></td>
                                            <td align="left"><b>{{$chun1['v8']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Rate Kinerja</b></td>
                                            <td align="left"><b>{{$chun1['total']}}</b></td>
                                          </tr>                                         
                                    </table>
                                    </div>
                                  </div>              
                              </div>
                            <div class="modal-footer">
                        </div>
                    </div>
                </div>
              </div>
@endif
@endforeach

<?php $no1=0; ?>
@foreach($chunkdown as $chun1)
	@if($chun1['total']<=60)
		<?php $no1++; ?>
<!-- Modal Detail Pegawai BURUK-->
              <div class="modal fade in" id="staff{{$chun1['id']}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" value="">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <!-- Modal Header -->
                            <div class="modal-header hidden-print">
                                <button type="button" class="close" data-dismiss="modal">
                                       <span aria-hidden="true">&times;</span>
                                       <span class="sr-only">Close</span>
                                </button>
                            </div>
                            
                            <!-- Modal Body -->
                              <div class="modal-body">  
                                <div class="panel panel-lg-default">
                                  <div class="table-responsive">        
                                    <table class="table table-striped">
                                          <tr style="">
                                            <td colspan="2" align="center" ><h5 style="font-family:roboto; color:black;">DETAIL STAFF DENGAN KINERJA "BURUK"</h5></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Nama Staff:</b></td>
                                            <td align="left"><b>{{$chun1['nama']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Divisi</b></td>
                                            <td align="left"><b>{{$chun1['divisi']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Produktifitas</b></td>
                                            <td align="left"><b>{{$chun1['v1']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Inisiatif</b></td>
                                            <td align="left"><b>{{$chun1['v2']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Ketelitian</b></td>
                                            <td align="left"><b>{{$chun1['v3']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Efisiensi</b></td>
                                            <td align="left"><b>{{$chun1['v4']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Kerjasama</b></td>
                                            <td align="left"><b>{{$chun1['v5']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Tanggung Jawab</b></td>
                                            <td align="left"><b>{{$chun1['v6']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Kedisiplinan</b></td>
                                            <td align="left"><b>{{$chun1['v7']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Kehadiran</b></td>
                                            <td align="left"><b>{{$chun1['v8']}}</b></td>
                                          </tr>
                                          <tr>
                                            <td align="left"><b>Rate Kinerja</b></td>
                                            <td align="left"><b>{{$chun1['total']}}</b></td>
                                          </tr>                                         
                                    </table>
                                    </div>
                                  </div>              
                              </div>
                            <div class="modal-footer">
                        </div>
                    </div>
                </div>
              </div>
@endif
@endforeach
</body>

@endsection
