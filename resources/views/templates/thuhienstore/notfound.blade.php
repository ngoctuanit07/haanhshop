@extends($theme.'.shop_layout')
@section('banner')
@endsection

@section('main')

    <section >
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-danger text-center">
                   <h1>{{ $msg }}</h1>
                </div>
                </div>
            </div>
        </section>
<!-- /.col -->
@endsection
