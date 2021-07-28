<?php

namespace App\Http\Controllers;

use App\Models\ContactBooks;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{

    public function loadMore(Request $request)
    {
        $data = '';
        $contactBooks = ContactBooks::
        where(['isActive'=>ContactBooks::ACTIVE])
            ->paginate(2);

        if ($request->ajax()) {
            foreach ($contactBooks as $book) {
                $data.='<tr>';
                $data.='<td>'.'age:'.' <strong>'.$book->age.'</strong</td>';
                $data.='<td> eyeColor: '.$book->eyeColor.'</td>';
                $data.='<td> name: '.$book->name.'</td>';
                $data.='<td> gender: '.$book->gender.'</td>';
                $data.='<td> company: '.$book->company.'</td>';
                $data.='<td> email: '.$book->email.'</td>';
                $data.='<td> phone: '.$book->phone.'</td>';
                $data.='<td> address: '.$book->address.'</td>';
                $data.='</tr>';
			}
            return $data;
        }
        return view('book.index',compact('contactBooks'));
    }



}
