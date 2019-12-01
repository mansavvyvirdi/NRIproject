<h1>Upload Items CSV Form</h1>

<form action="{{ route('uploadData') }}" method='post' enctype='multipart/form-data'>
@csrf
<input type='file' name='uploadFile'>
<input type='submit' value='upload' name='upload'>
</form>

<h2>Total Spending Amount Per Month</h2>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Year</th>
      <th scope="col">Month</th>
      <th scope="col">Total</th>
      
    </tr>
  </thead>
  <tbody>
  <?php foreach($itemsPerMonth as $item){ ?>
      <tr>
      <td><?php echo $item->year; ?></td>
      <td><?php echo $item->month; ?></td>
      <td><?php echo $item->total; ?></td>
      </tr>  
  <?php } ?>
  </tbody>
</table>

<h2>Total Spending Amount Per Category</h2>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Category</th>
      <th scope="col">Total</th>
      
    </tr>
  </thead>
  <tbody>
  <?php foreach($itemsPerCategory as $item){ ?>
      <tr>
      <td><?php echo $item->category; ?></td>
      <td><?php echo $item->total; ?></td>
      </tr>  
  <?php } ?>
  </tbody>
</table>