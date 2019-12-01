<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="row">
    <h1>Items Page</h1>
    <div class="col-sm-6">
    <div class="uploadf" style='margin-top:40px;'>
    <h3>Upload Items CSV - Form</h3>
        <form action="{{ route('uploadData') }}" method='post' enctype='multipart/form-data'>
        @csrf
            <div class="form-group">
                <input type='file' name='uploadFile' class="form-control">
            </div>
            <input type='submit' value='upload' name='upload' class="btn btn-default">
        </form>
    </div>
</div>
</div>

<div class="row" style='margin-top:40px;'>
<div class="col-sm-12 col-md-6">
<h3>Total Spending Amount Per Month</h3>
<div class="table-responsive">
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
</div>
</div>

<div class="col-sm-12 col-md-6">
<h3>Total Spending Amount Per Category</h3>
<div class="table-responsive">
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
</div>
</div>

</div>
</div>
</body>
</html>
