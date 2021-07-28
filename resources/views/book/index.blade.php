<!doctype html>
<html lang="en">
<head>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Laravel 8 Load More Data using Ajax jQuery - websolutionstuff.com</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
        .wrapper > ul#results li {
            margin-bottom: 2px;
            background: #e2e2e2;
            padding: 20px;
            list-style: none;
        }
        .ajax-loading{
            text-align: center;
        }
    </style>
</head>
<body>


<div class="ajax-loading"><img  src="{{ asset('image/loader.gif') }}" /></div>

<h2 style="text-align: center;margin: 30px 0px">Gulomjon Sulaymonov's test task</h2>
<div class="container">
    <div class="wrapper">
        <table
            id="results"
            class="table table-bordered">
            <tr>
             <td>
                 <select id="name" class="name form-control">
                     <option value="asc">ascending</option>
                     <option value="desc">descending</option>
                 </select>
             </td>
            </tr>
        </table>

        <div id="no_record"></div>
        <button id="read_more" class="btn btn-primary float-right">Read more</button>
    </div>
</div>

</body>
</html>
<script>

    var site_url = "{{ url('/') }}";
    var page = 1;

    load_more(page);

    $( "#read_more" ).click(function() {
        page++;
        load_more(page)
    });

    function load_more(page,column_name='name',column_value){
        console.log(column_value)
        $.ajax({
            url: site_url + "/contact-book?page=" + page,
            type: "get",

            datatype: "html",
            beforeSend: function()
            {
                $('.ajax-loading').show();
            }
        })
            .done(function(data)
            {
                if(data.length == 0){
                    $('#no_record').html("<h1 style='text-align: center'>No more records!</h1>");
                    $('#read_more').hide();
                    $('.ajax-loading').hide();
                    return;
                }
                $('.ajax-loading').hide();
                $("#results").append(data);
            })
            .fail(function(jqXHR, ajaxOptions, thrownError)
            {
                alert('No response from server');
            });
    }
</script>
