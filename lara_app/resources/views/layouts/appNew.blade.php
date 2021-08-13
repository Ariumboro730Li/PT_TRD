<!doctype html>
<html lang="en">
  <head>
    <title>The Shop</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
  <body>
    <nav class="navbar navbar-expand-sm navbar-dark bg-light">
        <span class="m-2 text-dark" href="#">{{Auth::user()->name}}<br>
            <a href="{{url('history')}}"><small><b class="text-danger" id="countOrder">2</b> Unpaid Order</small></a>
        </span>
        <a class="text-info m-2" href="{{url('')}}/prepaidbalance">Prepaid Balance</a>
        <a class="text-info m-2" href="{{url('')}}/productpage">Product Page</a>
    </nav>
    <main class="py-4">
        @yield('content')
    </main>
        <script>
        countOrder();
        function countOrder(){
            $.ajax({
                type: "get",
                url: "{{url('')}}/countorder",
                success: function (response) {
                    $(`#countOrder`).html(response);
                }
            });
        }
    </script>
</body>
</html>
