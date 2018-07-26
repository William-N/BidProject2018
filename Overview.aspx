<%@ Page Title="Overview" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Overview.aspx.cs" Inherits="RFP.Overview" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">.lst-kix_7swmbxy4rkqb-7>li:before{content:"" counter(lst-ctn-kix_7swmbxy4rkqb-7,lower-latin) ". "}ol.lst-kix_vdg0pe831poo-0{list-style-type:none}ol.lst-kix_vdg0pe831poo-6.start{counter-reset:lst-ctn-kix_vdg0pe831poo-6 0}.lst-kix_7swmbxy4rkqb-6>li:before{content:"" counter(lst-ctn-kix_7swmbxy4rkqb-6,decimal) ". "}.lst-kix_7swmbxy4rkqb-8>li:before{content:"" counter(lst-ctn-kix_7swmbxy4rkqb-8,lower-roman) ". "}ol.lst-kix_a0td01vo5qv0-0.start{counter-reset:lst-ctn-kix_a0td01vo5qv0-0 0}.lst-kix_7swmbxy4rkqb-2>li:before{content:"" counter(lst-ctn-kix_7swmbxy4rkqb-2,lower-roman) ". "}ol.lst-kix_w2mfm9aadj54-1.start{counter-reset:lst-ctn-kix_w2mfm9aadj54-1 0}.lst-kix_7swmbxy4rkqb-1>li:before{content:"" counter(lst-ctn-kix_7swmbxy4rkqb-1,decimal) ". "}.lst-kix_7swmbxy4rkqb-1>li{counter-increment:lst-ctn-kix_7swmbxy4rkqb-1}ol.lst-kix_vznncmgiycrc-2.start{counter-reset:lst-ctn-kix_vznncmgiycrc-2 0}.lst-kix_j240t11xhkk2-1>li{counter-increment:lst-ctn-kix_j240t11xhkk2-1}.lst-kix_l2lmkt3v1wry-8>li{counter-increment:lst-ctn-kix_l2lmkt3v1wry-8}.lst-kix_7swmbxy4rkqb-0>li:before{content:"" counter(lst-ctn-kix_7swmbxy4rkqb-0,decimal) ". "}.lst-kix_vanikhlrvbhi-3>li{counter-increment:lst-ctn-kix_vanikhlrvbhi-3}.lst-kix_phtortc37r9c-5>li:before{content:"\0025a0  "}.lst-kix_phtortc37r9c-4>li:before{content:"\0025cb  "}.lst-kix_phtortc37r9c-3>li:before{content:"\0025cf  "}.lst-kix_phtortc37r9c-2>li:before{content:"\0025a0  "}ol.lst-kix_j240t11xhkk2-0.start{counter-reset:lst-ctn-kix_j240t11xhkk2-0 0}.lst-kix_phtortc37r9c-1>li:before{content:"\0025cb  "}.lst-kix_phtortc37r9c-0>li:before{content:"\0025cf  "}ol.lst-kix_8a3lzhhfrh63-6.start{counter-reset:lst-ctn-kix_8a3lzhhfrh63-6 0}.lst-kix_gda88x8nt1vs-8>li:before{content:"\0025a0  "}ol.lst-kix_4svt6a83kkcj-6.start{counter-reset:lst-ctn-kix_4svt6a83kkcj-6 0}.lst-kix_gda88x8nt1vs-6>li:before{content:"\0025cf  "}ol.lst-kix_a0td01vo5qv0-5.start{counter-reset:lst-ctn-kix_a0td01vo5qv0-5 0}.lst-kix_gda88x8nt1vs-3>li:before{content:"\0025cf  "}.lst-kix_gda88x8nt1vs-7>li:before{content:"\0025cb  "}ol.lst-kix_uz8dg5pajhhs-0.start{counter-reset:lst-ctn-kix_uz8dg5pajhhs-0 0}.lst-kix_7swmbxy4rkqb-3>li:before{content:"" counter(lst-ctn-kix_7swmbxy4rkqb-3,decimal) ". "}ol.lst-kix_vdg0pe831poo-8{list-style-type:none}ol.lst-kix_vdg0pe831poo-7{list-style-type:none}.lst-kix_7swmbxy4rkqb-4>li:before{content:"" counter(lst-ctn-kix_7swmbxy4rkqb-4,lower-latin) ". "}ol.lst-kix_vdg0pe831poo-6{list-style-type:none}ol.lst-kix_vdg0pe831poo-5{list-style-type:none}.lst-kix_gda88x8nt1vs-4>li:before{content:"\0025cb  "}.lst-kix_7swmbxy4rkqb-5>li:before{content:"" counter(lst-ctn-kix_7swmbxy4rkqb-5,lower-roman) ". "}.lst-kix_8a3lzhhfrh63-8>li{counter-increment:lst-ctn-kix_8a3lzhhfrh63-8}ol.lst-kix_vdg0pe831poo-4{list-style-type:none}ol.lst-kix_vdg0pe831poo-3{list-style-type:none}.lst-kix_gda88x8nt1vs-5>li:before{content:"\0025a0  "}ol.lst-kix_vdg0pe831poo-2{list-style-type:none}ol.lst-kix_vdg0pe831poo-1{list-style-type:none}.lst-kix_9tllye9rvlfb-7>li:before{content:"\0025cb  "}.lst-kix_9tllye9rvlfb-5>li:before{content:"\0025a0  "}.lst-kix_9tllye9rvlfb-4>li:before{content:"\0025cb  "}.lst-kix_9tllye9rvlfb-8>li:before{content:"\0025a0  "}.lst-kix_ybuptmahwoou-6>li:before{content:"\0025cf  "}.lst-kix_ybuptmahwoou-7>li:before{content:"\0025cb  "}.lst-kix_j240t11xhkk2-5>li{counter-increment:lst-ctn-kix_j240t11xhkk2-5}.lst-kix_ybuptmahwoou-8>li:before{content:"\0025a0  "}.lst-kix_9tllye9rvlfb-6>li:before{content:"\0025cf  "}ol.lst-kix_vdg0pe831poo-1.start{counter-reset:lst-ctn-kix_vdg0pe831poo-1 0}ol.lst-kix_w2mfm9aadj54-6.start{counter-reset:lst-ctn-kix_w2mfm9aadj54-6 0}.lst-kix_a0td01vo5qv0-6>li{counter-increment:lst-ctn-kix_a0td01vo5qv0-6}.lst-kix_ybuptmahwoou-1>li:before{content:"\0025cb  "}.lst-kix_ybuptmahwoou-3>li:before{content:"\0025cf  "}ol.lst-kix_7swmbxy4rkqb-4.start{counter-reset:lst-ctn-kix_7swmbxy4rkqb-4 0}.lst-kix_ybuptmahwoou-2>li:before{content:"\0025a0  "}.lst-kix_ybuptmahwoou-5>li:before{content:"\0025a0  "}ol.lst-kix_j240t11xhkk2-5.start{counter-reset:lst-ctn-kix_j240t11xhkk2-5 0}.lst-kix_ybuptmahwoou-4>li:before{content:"\0025cb  "}.lst-kix_fqu9qzrdl4q4-8>li:before{content:"\0025a0  "}.lst-kix_4svt6a83kkcj-1>li{counter-increment:lst-ctn-kix_4svt6a83kkcj-1}.lst-kix_try5avu93q8b-4>li:before{content:"\0025cb  "}.lst-kix_try5avu93q8b-6>li:before{content:"\0025cf  "}ol.lst-kix_xhtesctf37aq-8{list-style-type:none}.lst-kix_fqu9qzrdl4q4-7>li:before{content:"\0025cb  "}.lst-kix_try5avu93q8b-3>li:before{content:"\0025cf  "}.lst-kix_try5avu93q8b-7>li:before{content:"\0025cb  "}ol.lst-kix_xhtesctf37aq-5{list-style-type:none}.lst-kix_fqu9qzrdl4q4-4>li:before{content:"\0025cb  "}ol.lst-kix_xhtesctf37aq-4{list-style-type:none}ol.lst-kix_xhtesctf37aq-7{list-style-type:none}.lst-kix_try5avu93q8b-0>li:before{content:"\0025cf  "}.lst-kix_try5avu93q8b-2>li:before{content:"\0025a0  "}.lst-kix_try5avu93q8b-8>li:before{content:"\0025a0  "}ol.lst-kix_xhtesctf37aq-6{list-style-type:none}ol.lst-kix_xhtesctf37aq-1{list-style-type:none}.lst-kix_fqu9qzrdl4q4-6>li:before{content:"\0025cf  "}.lst-kix_8a3lzhhfrh63-4>li{counter-increment:lst-ctn-kix_8a3lzhhfrh63-4}ol.lst-kix_xhtesctf37aq-0{list-style-type:none}.lst-kix_8a3lzhhfrh63-1>li{counter-increment:lst-ctn-kix_8a3lzhhfrh63-1}ol.lst-kix_xhtesctf37aq-3{list-style-type:none}.lst-kix_fqu9qzrdl4q4-5>li:before{content:"\0025a0  "}.lst-kix_try5avu93q8b-1>li:before{content:"\0025cb  "}ol.lst-kix_xhtesctf37aq-2{list-style-type:none}.lst-kix_ybuptmahwoou-0>li:before{content:"\0025cf  "}ol.lst-kix_8a3lzhhfrh63-1.start{counter-reset:lst-ctn-kix_8a3lzhhfrh63-1 0}.lst-kix_9tllye9rvlfb-1>li:before{content:"\0025cb  "}.lst-kix_9tllye9rvlfb-0>li:before{content:"\0025cf  "}ol.lst-kix_4svt6a83kkcj-1.start{counter-reset:lst-ctn-kix_4svt6a83kkcj-1 0}.lst-kix_l2lmkt3v1wry-1>li{counter-increment:lst-ctn-kix_l2lmkt3v1wry-1}.lst-kix_9tllye9rvlfb-3>li:before{content:"\0025cf  "}.lst-kix_l2lmkt3v1wry-4>li{counter-increment:lst-ctn-kix_l2lmkt3v1wry-4}.lst-kix_vznncmgiycrc-0>li{counter-increment:lst-ctn-kix_vznncmgiycrc-0}.lst-kix_vdg0pe831poo-3>li{counter-increment:lst-ctn-kix_vdg0pe831poo-3}.lst-kix_9tllye9rvlfb-2>li:before{content:"\0025a0  "}.lst-kix_7r10h2uthn2q-8>li{counter-increment:lst-ctn-kix_7r10h2uthn2q-8}.lst-kix_try5avu93q8b-5>li:before{content:"\0025a0  "}ul.lst-kix_ybuptmahwoou-0{list-style-type:none}ul.lst-kix_ybuptmahwoou-2{list-style-type:none}ul.lst-kix_ybuptmahwoou-1{list-style-type:none}.lst-kix_uz8dg5pajhhs-7>li{counter-increment:lst-ctn-kix_uz8dg5pajhhs-7}ul.lst-kix_ybuptmahwoou-4{list-style-type:none}ol.lst-kix_8a3lzhhfrh63-7{list-style-type:none}ul.lst-kix_ybuptmahwoou-3{list-style-type:none}ol.lst-kix_8a3lzhhfrh63-6{list-style-type:none}ul.lst-kix_ybuptmahwoou-6{list-style-type:none}.lst-kix_akcu7lyus4y1-7>li:before{content:"\0025cb  "}ul.lst-kix_ybuptmahwoou-5{list-style-type:none}.lst-kix_o7x3ybv1840o-0>li:before{content:"\0025cf  "}ol.lst-kix_8a3lzhhfrh63-8{list-style-type:none}ul.lst-kix_ybuptmahwoou-8{list-style-type:none}ul.lst-kix_ybuptmahwoou-7{list-style-type:none}.lst-kix_w2mfm9aadj54-8>li{counter-increment:lst-ctn-kix_w2mfm9aadj54-8}.lst-kix_akcu7lyus4y1-5>li:before{content:"\0025a0  "}.lst-kix_4svt6a83kkcj-4>li:before{content:"" counter(lst-ctn-kix_4svt6a83kkcj-4,lower-latin) ". "}.lst-kix_o7x3ybv1840o-2>li:before{content:"\0025a0  "}ol.lst-kix_xhtesctf37aq-4.start{counter-reset:lst-ctn-kix_xhtesctf37aq-4 0}.lst-kix_fqu9qzrdl4q4-3>li:before{content:"\0025cf  "}.lst-kix_akcu7lyus4y1-3>li:before{content:"\0025cf  "}.lst-kix_4svt6a83kkcj-2>li:before{content:"" counter(lst-ctn-kix_4svt6a83kkcj-2,lower-roman) ". "}.lst-kix_j240t11xhkk2-8>li{counter-increment:lst-ctn-kix_j240t11xhkk2-8}ol.lst-kix_7r10h2uthn2q-5.start{counter-reset:lst-ctn-kix_7r10h2uthn2q-5 0}ol.lst-kix_vanikhlrvbhi-2.start{counter-reset:lst-ctn-kix_vanikhlrvbhi-2 0}.lst-kix_fqu9qzrdl4q4-1>li:before{content:"\0025cb  "}.lst-kix_akcu7lyus4y1-1>li:before{content:"\0025cb  "}.lst-kix_4svt6a83kkcj-0>li:before{content:"" counter(lst-ctn-kix_4svt6a83kkcj-0,decimal) ". "}ol.lst-kix_a0td01vo5qv0-2{list-style-type:none}.lst-kix_l2lmkt3v1wry-0>li{counter-increment:lst-ctn-kix_l2lmkt3v1wry-0}ol.lst-kix_a0td01vo5qv0-3{list-style-type:none}ol.lst-kix_a0td01vo5qv0-0{list-style-type:none}ol.lst-kix_a0td01vo5qv0-1{list-style-type:none}.lst-kix_vznncmgiycrc-4>li{counter-increment:lst-ctn-kix_vznncmgiycrc-4}ol.lst-kix_a0td01vo5qv0-6{list-style-type:none}ol.lst-kix_a0td01vo5qv0-7{list-style-type:none}ol.lst-kix_a0td01vo5qv0-4{list-style-type:none}ul.lst-kix_o7x3ybv1840o-7{list-style-type:none}ol.lst-kix_a0td01vo5qv0-5{list-style-type:none}ul.lst-kix_o7x3ybv1840o-8{list-style-type:none}ul.lst-kix_o7x3ybv1840o-5{list-style-type:none}ol.lst-kix_j240t11xhkk2-2.start{counter-reset:lst-ctn-kix_j240t11xhkk2-2 0}ul.lst-kix_o7x3ybv1840o-6{list-style-type:none}ul.lst-kix_o7x3ybv1840o-3{list-style-type:none}ul.lst-kix_o7x3ybv1840o-4{list-style-type:none}ul.lst-kix_o7x3ybv1840o-1{list-style-type:none}ul.lst-kix_o7x3ybv1840o-2{list-style-type:none}ul.lst-kix_o7x3ybv1840o-0{list-style-type:none}ul.lst-kix_fqu9qzrdl4q4-6{list-style-type:none}ol.lst-kix_uz8dg5pajhhs-7.start{counter-reset:lst-ctn-kix_uz8dg5pajhhs-7 0}ul.lst-kix_fqu9qzrdl4q4-7{list-style-type:none}ul.lst-kix_fqu9qzrdl4q4-4{list-style-type:none}ul.lst-kix_fqu9qzrdl4q4-5{list-style-type:none}ol.lst-kix_l2lmkt3v1wry-2.start{counter-reset:lst-ctn-kix_l2lmkt3v1wry-2 0}ul.lst-kix_fqu9qzrdl4q4-8{list-style-type:none}.lst-kix_4svt6a83kkcj-6>li:before{content:"" counter(lst-ctn-kix_4svt6a83kkcj-6,decimal) ". "}.lst-kix_o7x3ybv1840o-4>li:before{content:"\0025cb  "}.lst-kix_o7x3ybv1840o-8>li:before{content:"\0025a0  "}ol.lst-kix_a0td01vo5qv0-8{list-style-type:none}.lst-kix_7swmbxy4rkqb-5>li{counter-increment:lst-ctn-kix_7swmbxy4rkqb-5}ul.lst-kix_fqu9qzrdl4q4-2{list-style-type:none}ul.lst-kix_fqu9qzrdl4q4-3{list-style-type:none}ol.lst-kix_a0td01vo5qv0-2.start{counter-reset:lst-ctn-kix_a0td01vo5qv0-2 0}ul.lst-kix_fqu9qzrdl4q4-0{list-style-type:none}.lst-kix_4svt6a83kkcj-8>li:before{content:"" counter(lst-ctn-kix_4svt6a83kkcj-8,lower-roman) ". "}ul.lst-kix_fqu9qzrdl4q4-1{list-style-type:none}.lst-kix_o7x3ybv1840o-6>li:before{content:"\0025cf  "}.lst-kix_xhtesctf37aq-0>li:before{content:"" counter(lst-ctn-kix_xhtesctf37aq-0,decimal) ". "}.lst-kix_xhtesctf37aq-4>li:before{content:"" counter(lst-ctn-kix_xhtesctf37aq-4,lower-latin) ". "}.lst-kix_uz8dg5pajhhs-8>li:before{content:"" counter(lst-ctn-kix_uz8dg5pajhhs-8,lower-roman) ". "}ol.lst-kix_7r10h2uthn2q-7.start{counter-reset:lst-ctn-kix_7r10h2uthn2q-7 0}.lst-kix_uz8dg5pajhhs-4>li:before{content:"" counter(lst-ctn-kix_uz8dg5pajhhs-4,lower-latin) ". "}.lst-kix_gda88x8nt1vs-2>li:before{content:"\0025a0  "}ul.lst-kix_iaondfgk5kmg-5{list-style-type:none}ul.lst-kix_iaondfgk5kmg-4{list-style-type:none}ul.lst-kix_iaondfgk5kmg-7{list-style-type:none}ul.lst-kix_iaondfgk5kmg-6{list-style-type:none}.lst-kix_gda88x8nt1vs-0>li:before{content:"\0025cf  "}ul.lst-kix_iaondfgk5kmg-8{list-style-type:none}.lst-kix_xhtesctf37aq-2>li:before{content:"" counter(lst-ctn-kix_xhtesctf37aq-2,lower-roman) ". "}.lst-kix_7swmbxy4rkqb-4>li{counter-increment:lst-ctn-kix_7swmbxy4rkqb-4}.lst-kix_7r10h2uthn2q-4>li{counter-increment:lst-ctn-kix_7r10h2uthn2q-4}.lst-kix_uz8dg5pajhhs-2>li:before{content:"" counter(lst-ctn-kix_uz8dg5pajhhs-2,lower-roman) ". "}ol.lst-kix_vznncmgiycrc-0.start{counter-reset:lst-ctn-kix_vznncmgiycrc-0 0}ul.lst-kix_9tllye9rvlfb-8{list-style-type:none}ul.lst-kix_9tllye9rvlfb-7{list-style-type:none}ul.lst-kix_iaondfgk5kmg-1{list-style-type:none}.lst-kix_4svt6a83kkcj-5>li{counter-increment:lst-ctn-kix_4svt6a83kkcj-5}ul.lst-kix_iaondfgk5kmg-0{list-style-type:none}.lst-kix_xhtesctf37aq-5>li{counter-increment:lst-ctn-kix_xhtesctf37aq-5}ul.lst-kix_iaondfgk5kmg-3{list-style-type:none}.lst-kix_xhtesctf37aq-8>li:before{content:"" counter(lst-ctn-kix_xhtesctf37aq-8,lower-roman) ". "}.lst-kix_l2lmkt3v1wry-5>li{counter-increment:lst-ctn-kix_l2lmkt3v1wry-5}ul.lst-kix_iaondfgk5kmg-2{list-style-type:none}ol.lst-kix_xhtesctf37aq-2.start{counter-reset:lst-ctn-kix_xhtesctf37aq-2 0}ul.lst-kix_9tllye9rvlfb-2{list-style-type:none}ul.lst-kix_9tllye9rvlfb-1{list-style-type:none}ul.lst-kix_9tllye9rvlfb-0{list-style-type:none}.lst-kix_vanikhlrvbhi-7>li{counter-increment:lst-ctn-kix_vanikhlrvbhi-7}ol.lst-kix_vdg0pe831poo-4.start{counter-reset:lst-ctn-kix_vdg0pe831poo-4 0}ul.lst-kix_9tllye9rvlfb-6{list-style-type:none}ul.lst-kix_9tllye9rvlfb-5{list-style-type:none}ul.lst-kix_9tllye9rvlfb-4{list-style-type:none}.lst-kix_xhtesctf37aq-6>li:before{content:"" counter(lst-ctn-kix_xhtesctf37aq-6,decimal) ". "}ul.lst-kix_9tllye9rvlfb-3{list-style-type:none}.lst-kix_uz8dg5pajhhs-6>li:before{content:"" counter(lst-ctn-kix_uz8dg5pajhhs-6,decimal) ". "}.lst-kix_vdg0pe831poo-8>li:before{content:"" counter(lst-ctn-kix_vdg0pe831poo-8,lower-roman) ". "}ol.lst-kix_l2lmkt3v1wry-0.start{counter-reset:lst-ctn-kix_l2lmkt3v1wry-0 0}ol.lst-kix_vanikhlrvbhi-4.start{counter-reset:lst-ctn-kix_vanikhlrvbhi-4 0}.lst-kix_vdg0pe831poo-6>li:before{content:"" counter(lst-ctn-kix_vdg0pe831poo-6,decimal) ". "}.lst-kix_w2mfm9aadj54-1>li{counter-increment:lst-ctn-kix_w2mfm9aadj54-1}.lst-kix_a0td01vo5qv0-5>li{counter-increment:lst-ctn-kix_a0td01vo5qv0-5}.lst-kix_vdg0pe831poo-4>li:before{content:"" counter(lst-ctn-kix_vdg0pe831poo-4,lower-latin) ". "}.lst-kix_uz8dg5pajhhs-0>li{counter-increment:lst-ctn-kix_uz8dg5pajhhs-0}.lst-kix_phtortc37r9c-6>li:before{content:"\0025cf  "}.lst-kix_vdg0pe831poo-0>li:before{content:"" counter(lst-ctn-kix_vdg0pe831poo-0,decimal) ". "}.lst-kix_uz8dg5pajhhs-6>li{counter-increment:lst-ctn-kix_uz8dg5pajhhs-6}.lst-kix_vdg0pe831poo-2>li:before{content:"" counter(lst-ctn-kix_vdg0pe831poo-2,lower-roman) ". "}.lst-kix_phtortc37r9c-8>li:before{content:"\0025a0  "}.lst-kix_uz8dg5pajhhs-0>li:before{content:"" counter(lst-ctn-kix_uz8dg5pajhhs-0,decimal) ". "}ol.lst-kix_7swmbxy4rkqb-6.start{counter-reset:lst-ctn-kix_7swmbxy4rkqb-6 0}ol.lst-kix_8a3lzhhfrh63-3{list-style-type:none}ol.lst-kix_w2mfm9aadj54-8.start{counter-reset:lst-ctn-kix_w2mfm9aadj54-8 0}ol.lst-kix_8a3lzhhfrh63-2{list-style-type:none}ol.lst-kix_8a3lzhhfrh63-5{list-style-type:none}ol.lst-kix_uz8dg5pajhhs-5.start{counter-reset:lst-ctn-kix_uz8dg5pajhhs-5 0}ol.lst-kix_8a3lzhhfrh63-4{list-style-type:none}ol.lst-kix_8a3lzhhfrh63-1{list-style-type:none}ol.lst-kix_8a3lzhhfrh63-0{list-style-type:none}.lst-kix_l2lmkt3v1wry-4>li:before{content:"" counter(lst-ctn-kix_l2lmkt3v1wry-4,lower-latin) ". "}ol.lst-kix_j240t11xhkk2-6{list-style-type:none}ol.lst-kix_j240t11xhkk2-5{list-style-type:none}ol.lst-kix_j240t11xhkk2-8{list-style-type:none}ol.lst-kix_j240t11xhkk2-7{list-style-type:none}.lst-kix_7r10h2uthn2q-7>li{counter-increment:lst-ctn-kix_7r10h2uthn2q-7}.lst-kix_4svt6a83kkcj-2>li{counter-increment:lst-ctn-kix_4svt6a83kkcj-2}.lst-kix_l2lmkt3v1wry-5>li:before{content:"" counter(lst-ctn-kix_l2lmkt3v1wry-5,lower-roman) ". "}ol.lst-kix_l2lmkt3v1wry-4.start{counter-reset:lst-ctn-kix_l2lmkt3v1wry-4 0}.lst-kix_vanikhlrvbhi-4>li{counter-increment:lst-ctn-kix_vanikhlrvbhi-4}ol.lst-kix_j240t11xhkk2-2{list-style-type:none}ol.lst-kix_8a3lzhhfrh63-3.start{counter-reset:lst-ctn-kix_8a3lzhhfrh63-3 0}ol.lst-kix_j240t11xhkk2-1{list-style-type:none}.lst-kix_l2lmkt3v1wry-0>li:before{content:"" counter(lst-ctn-kix_l2lmkt3v1wry-0,decimal) ". "}ol.lst-kix_j240t11xhkk2-4{list-style-type:none}ol.lst-kix_j240t11xhkk2-3{list-style-type:none}ol.lst-kix_w2mfm9aadj54-4.start{counter-reset:lst-ctn-kix_w2mfm9aadj54-4 0}.lst-kix_l2lmkt3v1wry-1>li:before{content:"" counter(lst-ctn-kix_l2lmkt3v1wry-1,decimal) ". "}ol.lst-kix_j240t11xhkk2-0{list-style-type:none}.lst-kix_a0td01vo5qv0-3>li{counter-increment:lst-ctn-kix_a0td01vo5qv0-3}ol.lst-kix_4svt6a83kkcj-3.start{counter-reset:lst-ctn-kix_4svt6a83kkcj-3 0}.lst-kix_35gn96cywov7-6>li:before{content:"\0025cf  "}.lst-kix_35gn96cywov7-7>li:before{content:"\0025cb  "}ol.lst-kix_7swmbxy4rkqb-2.start{counter-reset:lst-ctn-kix_7swmbxy4rkqb-2 0}.lst-kix_vznncmgiycrc-1>li{counter-increment:lst-ctn-kix_vznncmgiycrc-1}.lst-kix_35gn96cywov7-3>li:before{content:"\0025cf  "}ol.lst-kix_vdg0pe831poo-3.start{counter-reset:lst-ctn-kix_vdg0pe831poo-3 0}.lst-kix_4svt6a83kkcj-0>li{counter-increment:lst-ctn-kix_4svt6a83kkcj-0}ol.lst-kix_vanikhlrvbhi-6.start{counter-reset:lst-ctn-kix_vanikhlrvbhi-6 0}.lst-kix_vanikhlrvbhi-2>li{counter-increment:lst-ctn-kix_vanikhlrvbhi-2}.lst-kix_w2mfm9aadj54-0>li:before{content:"" counter(lst-ctn-kix_w2mfm9aadj54-0,decimal) ". "}ul.lst-kix_f78yvp847vds-1{list-style-type:none}.lst-kix_vdg0pe831poo-6>li{counter-increment:lst-ctn-kix_vdg0pe831poo-6}ul.lst-kix_f78yvp847vds-2{list-style-type:none}.lst-kix_a0td01vo5qv0-1>li{counter-increment:lst-ctn-kix_a0td01vo5qv0-1}.lst-kix_w2mfm9aadj54-3>li:before{content:"" counter(lst-ctn-kix_w2mfm9aadj54-3,decimal) ". "}ul.lst-kix_f78yvp847vds-0{list-style-type:none}ul.lst-kix_f78yvp847vds-5{list-style-type:none}ul.lst-kix_f78yvp847vds-6{list-style-type:none}ul.lst-kix_f78yvp847vds-3{list-style-type:none}ul.lst-kix_f78yvp847vds-4{list-style-type:none}ol.lst-kix_4svt6a83kkcj-2.start{counter-reset:lst-ctn-kix_4svt6a83kkcj-2 0}.lst-kix_iaondfgk5kmg-3>li:before{content:"\0025cf  "}ol.lst-kix_xhtesctf37aq-5.start{counter-reset:lst-ctn-kix_xhtesctf37aq-5 0}.lst-kix_7r10h2uthn2q-5>li:before{content:"" counter(lst-ctn-kix_7r10h2uthn2q-5,lower-roman) ". "}.lst-kix_7r10h2uthn2q-6>li:before{content:"" counter(lst-ctn-kix_7r10h2uthn2q-6,decimal) ". "}ul.lst-kix_f78yvp847vds-7{list-style-type:none}.lst-kix_vanikhlrvbhi-6>li{counter-increment:lst-ctn-kix_vanikhlrvbhi-6}ul.lst-kix_f78yvp847vds-8{list-style-type:none}.lst-kix_j240t11xhkk2-1>li:before{content:"" counter(lst-ctn-kix_j240t11xhkk2-1,decimal) ". "}.lst-kix_w2mfm9aadj54-0>li{counter-increment:lst-ctn-kix_w2mfm9aadj54-0}.lst-kix_iaondfgk5kmg-6>li:before{content:"\0025cf  "}.lst-kix_j240t11xhkk2-4>li{counter-increment:lst-ctn-kix_j240t11xhkk2-4}.lst-kix_iaondfgk5kmg-7>li:before{content:"\0025cb  "}ol.lst-kix_vanikhlrvbhi-7.start{counter-reset:lst-ctn-kix_vanikhlrvbhi-7 0}.lst-kix_7r10h2uthn2q-1>li:before{content:"" counter(lst-ctn-kix_7r10h2uthn2q-1,decimal) ". "}.lst-kix_7r10h2uthn2q-2>li:before{content:"" counter(lst-ctn-kix_7r10h2uthn2q-2,lower-roman) ". "}.lst-kix_j240t11xhkk2-2>li:before{content:"" counter(lst-ctn-kix_j240t11xhkk2-2,lower-roman) ". "}ol.lst-kix_8a3lzhhfrh63-8.start{counter-reset:lst-ctn-kix_8a3lzhhfrh63-8 0}.lst-kix_4svt6a83kkcj-4>li{counter-increment:lst-ctn-kix_4svt6a83kkcj-4}ol.lst-kix_xhtesctf37aq-6.start{counter-reset:lst-ctn-kix_xhtesctf37aq-6 0}.lst-kix_j240t11xhkk2-5>li:before{content:"" counter(lst-ctn-kix_j240t11xhkk2-5,lower-roman) ". "}ol.lst-kix_4svt6a83kkcj-8.start{counter-reset:lst-ctn-kix_4svt6a83kkcj-8 0}.lst-kix_x34yxjic08m9-5>li:before{content:"\0025a0  "}.lst-kix_x34yxjic08m9-6>li:before{content:"\0025cf  "}ol.lst-kix_w2mfm9aadj54-5.start{counter-reset:lst-ctn-kix_w2mfm9aadj54-5 0}.lst-kix_7swmbxy4rkqb-6>li{counter-increment:lst-ctn-kix_7swmbxy4rkqb-6}ol.lst-kix_uz8dg5pajhhs-8.start{counter-reset:lst-ctn-kix_uz8dg5pajhhs-8 0}.lst-kix_j240t11xhkk2-6>li:before{content:"" counter(lst-ctn-kix_j240t11xhkk2-6,decimal) ". "}ol.lst-kix_vznncmgiycrc-4{list-style-type:none}ol.lst-kix_l2lmkt3v1wry-3.start{counter-reset:lst-ctn-kix_l2lmkt3v1wry-3 0}ol.lst-kix_vznncmgiycrc-5{list-style-type:none}ol.lst-kix_vznncmgiycrc-6{list-style-type:none}.lst-kix_w2mfm9aadj54-8>li:before{content:"" counter(lst-ctn-kix_w2mfm9aadj54-8,lower-roman) ". "}ol.lst-kix_vznncmgiycrc-7{list-style-type:none}ol.lst-kix_vznncmgiycrc-8{list-style-type:none}.lst-kix_7r10h2uthn2q-5>li{counter-increment:lst-ctn-kix_7r10h2uthn2q-5}.lst-kix_x34yxjic08m9-1>li:before{content:"\0025cb  "}.lst-kix_x34yxjic08m9-2>li:before{content:"\0025a0  "}.lst-kix_w2mfm9aadj54-7>li:before{content:"" counter(lst-ctn-kix_w2mfm9aadj54-7,lower-latin) ". "}ol.lst-kix_7swmbxy4rkqb-3.start{counter-reset:lst-ctn-kix_7swmbxy4rkqb-3 0}.lst-kix_l2lmkt3v1wry-8>li:before{content:"" counter(lst-ctn-kix_l2lmkt3v1wry-8,lower-roman) ". "}.lst-kix_w2mfm9aadj54-4>li:before{content:"" counter(lst-ctn-kix_w2mfm9aadj54-4,lower-latin) ". "}.lst-kix_vznncmgiycrc-6>li{counter-increment:lst-ctn-kix_vznncmgiycrc-6}ol.lst-kix_vznncmgiycrc-0{list-style-type:none}ol.lst-kix_vznncmgiycrc-1{list-style-type:none}ol.lst-kix_vznncmgiycrc-2{list-style-type:none}.lst-kix_vznncmgiycrc-3>li{counter-increment:lst-ctn-kix_vznncmgiycrc-3}ol.lst-kix_vznncmgiycrc-3{list-style-type:none}ol.lst-kix_vanikhlrvbhi-8{list-style-type:none}ul.lst-kix_akcu7lyus4y1-0{list-style-type:none}ol.lst-kix_vanikhlrvbhi-7{list-style-type:none}ol.lst-kix_vanikhlrvbhi-6{list-style-type:none}.lst-kix_5horeekser8-6>li:before{content:"\0025cf  "}ul.lst-kix_akcu7lyus4y1-2{list-style-type:none}ol.lst-kix_vanikhlrvbhi-5{list-style-type:none}ul.lst-kix_akcu7lyus4y1-1{list-style-type:none}ol.lst-kix_vanikhlrvbhi-4{list-style-type:none}.lst-kix_akcu7lyus4y1-6>li:before{content:"\0025cf  "}ol.lst-kix_vanikhlrvbhi-3{list-style-type:none}.lst-kix_a0td01vo5qv0-3>li:before{content:"" counter(lst-ctn-kix_a0td01vo5qv0-3,decimal) ". "}ol.lst-kix_vanikhlrvbhi-2{list-style-type:none}ol.lst-kix_vanikhlrvbhi-1{list-style-type:none}.lst-kix_vznncmgiycrc-2>li:before{content:"" counter(lst-ctn-kix_vznncmgiycrc-2,lower-roman) ". "}.lst-kix_vznncmgiycrc-6>li:before{content:"" counter(lst-ctn-kix_vznncmgiycrc-6,decimal) ". "}ul.lst-kix_akcu7lyus4y1-8{list-style-type:none}.lst-kix_xhtesctf37aq-2>li{counter-increment:lst-ctn-kix_xhtesctf37aq-2}ul.lst-kix_akcu7lyus4y1-7{list-style-type:none}.lst-kix_5horeekser8-2>li:before{content:"\0025a0  "}.lst-kix_4svt6a83kkcj-5>li:before{content:"" counter(lst-ctn-kix_4svt6a83kkcj-5,lower-roman) ". "}.lst-kix_o7x3ybv1840o-1>li:before{content:"\0025cb  "}ul.lst-kix_akcu7lyus4y1-4{list-style-type:none}ol.lst-kix_4svt6a83kkcj-7.start{counter-reset:lst-ctn-kix_4svt6a83kkcj-7 0}ul.lst-kix_akcu7lyus4y1-3{list-style-type:none}ul.lst-kix_akcu7lyus4y1-6{list-style-type:none}ul.lst-kix_akcu7lyus4y1-5{list-style-type:none}.lst-kix_fqu9qzrdl4q4-0>li:before{content:"\0025cf  "}.lst-kix_gcb83e31a733-4>li:before{content:"\0025cb  "}.lst-kix_4svt6a83kkcj-1>li:before{content:"" counter(lst-ctn-kix_4svt6a83kkcj-1,decimal) ". "}.lst-kix_akcu7lyus4y1-2>li:before{content:"\0025a0  "}.lst-kix_a0td01vo5qv0-7>li:before{content:"" counter(lst-ctn-kix_a0td01vo5qv0-7,lower-latin) ". "}ol.lst-kix_vanikhlrvbhi-0{list-style-type:none}.lst-kix_gcb83e31a733-0>li:before{content:"\0025cf  "}.lst-kix_vdg0pe831poo-8>li{counter-increment:lst-ctn-kix_vdg0pe831poo-8}ol.lst-kix_xhtesctf37aq-7.start{counter-reset:lst-ctn-kix_xhtesctf37aq-7 0}ol.lst-kix_w2mfm9aadj54-0.start{counter-reset:lst-ctn-kix_w2mfm9aadj54-0 0}.lst-kix_uz8dg5pajhhs-8>li{counter-increment:lst-ctn-kix_uz8dg5pajhhs-8}.lst-kix_l2lmkt3v1wry-3>li{counter-increment:lst-ctn-kix_l2lmkt3v1wry-3}ol.lst-kix_w2mfm9aadj54-3.start{counter-reset:lst-ctn-kix_w2mfm9aadj54-3 0}ul.lst-kix_gcb83e31a733-0{list-style-type:none}.lst-kix_o7x3ybv1840o-5>li:before{content:"\0025a0  "}ol.lst-kix_8a3lzhhfrh63-2.start{counter-reset:lst-ctn-kix_8a3lzhhfrh63-2 0}ol.lst-kix_l2lmkt3v1wry-8.start{counter-reset:lst-ctn-kix_l2lmkt3v1wry-8 0}ul.lst-kix_gcb83e31a733-5{list-style-type:none}ul.lst-kix_gcb83e31a733-6{list-style-type:none}ul.lst-kix_gcb83e31a733-7{list-style-type:none}ul.lst-kix_gcb83e31a733-8{list-style-type:none}ol.lst-kix_l2lmkt3v1wry-5.start{counter-reset:lst-ctn-kix_l2lmkt3v1wry-5 0}ul.lst-kix_gcb83e31a733-1{list-style-type:none}.lst-kix_7swmbxy4rkqb-8>li{counter-increment:lst-ctn-kix_7swmbxy4rkqb-8}ul.lst-kix_gcb83e31a733-2{list-style-type:none}ul.lst-kix_gcb83e31a733-3{list-style-type:none}ul.lst-kix_gcb83e31a733-4{list-style-type:none}ol.lst-kix_7swmbxy4rkqb-1.start{counter-reset:lst-ctn-kix_7swmbxy4rkqb-1 0}.lst-kix_uz8dg5pajhhs-7>li:before{content:"" counter(lst-ctn-kix_uz8dg5pajhhs-7,lower-latin) ". "}ol.lst-kix_8a3lzhhfrh63-5.start{counter-reset:lst-ctn-kix_8a3lzhhfrh63-5 0}ol.lst-kix_l2lmkt3v1wry-6.start{counter-reset:lst-ctn-kix_l2lmkt3v1wry-6 0}.lst-kix_w2mfm9aadj54-5>li{counter-increment:lst-ctn-kix_w2mfm9aadj54-5}.lst-kix_uz8dg5pajhhs-3>li:before{content:"" counter(lst-ctn-kix_uz8dg5pajhhs-3,decimal) ". "}.lst-kix_xhtesctf37aq-1>li:before{content:"" counter(lst-ctn-kix_xhtesctf37aq-1,lower-latin) ". "}.lst-kix_gda88x8nt1vs-1>li:before{content:"\0025cb  "}.lst-kix_8a3lzhhfrh63-6>li{counter-increment:lst-ctn-kix_8a3lzhhfrh63-6}.lst-kix_vdg0pe831poo-1>li{counter-increment:lst-ctn-kix_vdg0pe831poo-1}ol.lst-kix_4svt6a83kkcj-5.start{counter-reset:lst-ctn-kix_4svt6a83kkcj-5 0}.lst-kix_vznncmgiycrc-8>li{counter-increment:lst-ctn-kix_vznncmgiycrc-8}.lst-kix_xhtesctf37aq-5>li:before{content:"" counter(lst-ctn-kix_xhtesctf37aq-5,lower-roman) ". "}ul.lst-kix_5horeekser8-1{list-style-type:none}ul.lst-kix_5horeekser8-0{list-style-type:none}.lst-kix_7r10h2uthn2q-0>li{counter-increment:lst-ctn-kix_7r10h2uthn2q-0}.lst-kix_vdg0pe831poo-7>li:before{content:"" counter(lst-ctn-kix_vdg0pe831poo-7,lower-latin) ". "}.lst-kix_a0td01vo5qv0-8>li{counter-increment:lst-ctn-kix_a0td01vo5qv0-8}ol.lst-kix_8a3lzhhfrh63-4.start{counter-reset:lst-ctn-kix_8a3lzhhfrh63-4 0}ul.lst-kix_5horeekser8-3{list-style-type:none}ul.lst-kix_5horeekser8-2{list-style-type:none}ol.lst-kix_7swmbxy4rkqb-0.start{counter-reset:lst-ctn-kix_7swmbxy4rkqb-0 0}ul.lst-kix_5horeekser8-8{list-style-type:none}.lst-kix_vdg0pe831poo-3>li:before{content:"" counter(lst-ctn-kix_vdg0pe831poo-3,decimal) ". "}ol.lst-kix_w2mfm9aadj54-2.start{counter-reset:lst-ctn-kix_w2mfm9aadj54-2 0}ul.lst-kix_5horeekser8-5{list-style-type:none}.lst-kix_vanikhlrvbhi-6>li:before{content:"" counter(lst-ctn-kix_vanikhlrvbhi-6,decimal) ". "}ul.lst-kix_5horeekser8-4{list-style-type:none}ol.lst-kix_l2lmkt3v1wry-7.start{counter-reset:lst-ctn-kix_l2lmkt3v1wry-7 0}ul.lst-kix_5horeekser8-7{list-style-type:none}ul.lst-kix_5horeekser8-6{list-style-type:none}.lst-kix_phtortc37r9c-7>li:before{content:"\0025cb  "}.lst-kix_uz8dg5pajhhs-3>li{counter-increment:lst-ctn-kix_uz8dg5pajhhs-3}.lst-kix_gcb83e31a733-8>li:before{content:"\0025a0  "}ol.lst-kix_4svt6a83kkcj-4.start{counter-reset:lst-ctn-kix_4svt6a83kkcj-4 0}.lst-kix_j240t11xhkk2-6>li{counter-increment:lst-ctn-kix_j240t11xhkk2-6}.lst-kix_8a3lzhhfrh63-6>li:before{content:"" counter(lst-ctn-kix_8a3lzhhfrh63-6,decimal) ". "}.lst-kix_8a3lzhhfrh63-5>li:before{content:"" counter(lst-ctn-kix_8a3lzhhfrh63-5,lower-roman) ". "}.lst-kix_8a3lzhhfrh63-7>li:before{content:"" counter(lst-ctn-kix_8a3lzhhfrh63-7,lower-latin) ". "}ol.lst-kix_j240t11xhkk2-6.start{counter-reset:lst-ctn-kix_j240t11xhkk2-6 0}.lst-kix_8a3lzhhfrh63-4>li:before{content:"" counter(lst-ctn-kix_8a3lzhhfrh63-4,lower-latin) ". "}.lst-kix_8a3lzhhfrh63-8>li:before{content:"" counter(lst-ctn-kix_8a3lzhhfrh63-8,lower-roman) ". "}.lst-kix_aybwnlrw65ee-1>li:before{content:"\0025cb  "}.lst-kix_vanikhlrvbhi-0>li:before{content:"" counter(lst-ctn-kix_vanikhlrvbhi-0,decimal) ". "}.lst-kix_aybwnlrw65ee-2>li:before{content:"\0025a0  "}.lst-kix_aybwnlrw65ee-3>li:before{content:"\0025cf  "}.lst-kix_xhtesctf37aq-7>li{counter-increment:lst-ctn-kix_xhtesctf37aq-7}.lst-kix_a0td01vo5qv0-4>li{counter-increment:lst-ctn-kix_a0td01vo5qv0-4}.lst-kix_aybwnlrw65ee-4>li:before{content:"\0025cb  "}.lst-kix_w2mfm9aadj54-3>li{counter-increment:lst-ctn-kix_w2mfm9aadj54-3}.lst-kix_vanikhlrvbhi-3>li:before{content:"" counter(lst-ctn-kix_vanikhlrvbhi-3,decimal) ". "}.lst-kix_vanikhlrvbhi-4>li:before{content:"" counter(lst-ctn-kix_vanikhlrvbhi-4,lower-latin) ". "}.lst-kix_aybwnlrw65ee-6>li:before{content:"\0025cf  "}.lst-kix_aybwnlrw65ee-7>li:before{content:"\0025cb  "}.lst-kix_8a3lzhhfrh63-0>li:before{content:"" counter(lst-ctn-kix_8a3lzhhfrh63-0,decimal) ". "}.lst-kix_vanikhlrvbhi-5>li:before{content:"" counter(lst-ctn-kix_vanikhlrvbhi-5,lower-roman) ". "}.lst-kix_aybwnlrw65ee-5>li:before{content:"\0025a0  "}.lst-kix_vanikhlrvbhi-1>li:before{content:"" counter(lst-ctn-kix_vanikhlrvbhi-1,decimal) ". "}.lst-kix_8a3lzhhfrh63-2>li:before{content:"" counter(lst-ctn-kix_8a3lzhhfrh63-2,lower-roman) ". "}.lst-kix_f78yvp847vds-0>li:before{content:"\0025cf  "}ol.lst-kix_8a3lzhhfrh63-0.start{counter-reset:lst-ctn-kix_8a3lzhhfrh63-0 0}ol.lst-kix_uz8dg5pajhhs-6.start{counter-reset:lst-ctn-kix_uz8dg5pajhhs-6 0}.lst-kix_8a3lzhhfrh63-1>li:before{content:"" counter(lst-ctn-kix_8a3lzhhfrh63-1,lower-latin) ". "}.lst-kix_8a3lzhhfrh63-3>li:before{content:"" counter(lst-ctn-kix_8a3lzhhfrh63-3,decimal) ". "}ol.lst-kix_l2lmkt3v1wry-1.start{counter-reset:lst-ctn-kix_l2lmkt3v1wry-1 0}.lst-kix_vanikhlrvbhi-2>li:before{content:"" counter(lst-ctn-kix_vanikhlrvbhi-2,lower-roman) ". "}.lst-kix_aybwnlrw65ee-8>li:before{content:"\0025a0  "}ol.lst-kix_4svt6a83kkcj-0.start{counter-reset:lst-ctn-kix_4svt6a83kkcj-0 0}.lst-kix_uz8dg5pajhhs-1>li{counter-increment:lst-ctn-kix_uz8dg5pajhhs-1}ul.lst-kix_phtortc37r9c-7{list-style-type:none}ul.lst-kix_phtortc37r9c-8{list-style-type:none}.lst-kix_4jhjd3we39xu-4>li:before{content:"\0025cb  "}ol.lst-kix_7r10h2uthn2q-1.start{counter-reset:lst-ctn-kix_7r10h2uthn2q-1 0}.lst-kix_4jhjd3we39xu-3>li:before{content:"\0025cf  "}.lst-kix_vanikhlrvbhi-5>li{counter-increment:lst-ctn-kix_vanikhlrvbhi-5}ol.lst-kix_w2mfm9aadj54-7.start{counter-reset:lst-ctn-kix_w2mfm9aadj54-7 0}.lst-kix_l2lmkt3v1wry-6>li{counter-increment:lst-ctn-kix_l2lmkt3v1wry-6}.lst-kix_7r10h2uthn2q-6>li{counter-increment:lst-ctn-kix_7r10h2uthn2q-6}ol.lst-kix_vdg0pe831poo-0.start{counter-reset:lst-ctn-kix_vdg0pe831poo-0 0}.lst-kix_4jhjd3we39xu-0>li:before{content:"\0025cf  "}.lst-kix_4jhjd3we39xu-8>li:before{content:"\0025a0  "}.lst-kix_4jhjd3we39xu-1>li:before{content:"\0025cb  "}.lst-kix_4jhjd3we39xu-2>li:before{content:"\0025a0  "}ol.lst-kix_7swmbxy4rkqb-5.start{counter-reset:lst-ctn-kix_7swmbxy4rkqb-5 0}ol.lst-kix_uz8dg5pajhhs-0{list-style-type:none}ol.lst-kix_w2mfm9aadj54-6{list-style-type:none}ol.lst-kix_uz8dg5pajhhs-1{list-style-type:none}ol.lst-kix_w2mfm9aadj54-7{list-style-type:none}ol.lst-kix_w2mfm9aadj54-8{list-style-type:none}ol.lst-kix_uz8dg5pajhhs-4{list-style-type:none}ol.lst-kix_w2mfm9aadj54-2{list-style-type:none}ol.lst-kix_uz8dg5pajhhs-5{list-style-type:none}ol.lst-kix_w2mfm9aadj54-3{list-style-type:none}ol.lst-kix_uz8dg5pajhhs-2{list-style-type:none}ol.lst-kix_w2mfm9aadj54-4{list-style-type:none}ul.lst-kix_4jhjd3we39xu-0{list-style-type:none}ol.lst-kix_uz8dg5pajhhs-3{list-style-type:none}ol.lst-kix_w2mfm9aadj54-5{list-style-type:none}ol.lst-kix_uz8dg5pajhhs-8{list-style-type:none}ol.lst-kix_vanikhlrvbhi-3.start{counter-reset:lst-ctn-kix_vanikhlrvbhi-3 0}ul.lst-kix_4jhjd3we39xu-2{list-style-type:none}ul.lst-kix_phtortc37r9c-0{list-style-type:none}ul.lst-kix_4jhjd3we39xu-1{list-style-type:none}.lst-kix_4jhjd3we39xu-7>li:before{content:"\0025cb  "}.lst-kix_4svt6a83kkcj-3>li{counter-increment:lst-ctn-kix_4svt6a83kkcj-3}ol.lst-kix_xhtesctf37aq-8.start{counter-reset:lst-ctn-kix_xhtesctf37aq-8 0}ol.lst-kix_uz8dg5pajhhs-6{list-style-type:none}ul.lst-kix_phtortc37r9c-1{list-style-type:none}ul.lst-kix_4jhjd3we39xu-4{list-style-type:none}ol.lst-kix_uz8dg5pajhhs-7{list-style-type:none}ul.lst-kix_phtortc37r9c-2{list-style-type:none}ul.lst-kix_4jhjd3we39xu-3{list-style-type:none}ul.lst-kix_phtortc37r9c-3{list-style-type:none}ul.lst-kix_4jhjd3we39xu-6{list-style-type:none}.lst-kix_aybwnlrw65ee-0>li:before{content:"\0025cf  "}ul.lst-kix_phtortc37r9c-4{list-style-type:none}.lst-kix_4jhjd3we39xu-5>li:before{content:"\0025a0  "}ul.lst-kix_4jhjd3we39xu-5{list-style-type:none}.lst-kix_4jhjd3we39xu-6>li:before{content:"\0025cf  "}ul.lst-kix_phtortc37r9c-5{list-style-type:none}ul.lst-kix_4jhjd3we39xu-8{list-style-type:none}ul.lst-kix_phtortc37r9c-6{list-style-type:none}ul.lst-kix_4jhjd3we39xu-7{list-style-type:none}ol.lst-kix_w2mfm9aadj54-0{list-style-type:none}ol.lst-kix_w2mfm9aadj54-1{list-style-type:none}.lst-kix_a0td01vo5qv0-0>li{counter-increment:lst-ctn-kix_a0td01vo5qv0-0}ol.lst-kix_uz8dg5pajhhs-1.start{counter-reset:lst-ctn-kix_uz8dg5pajhhs-1 0}.lst-kix_7swmbxy4rkqb-3>li{counter-increment:lst-ctn-kix_7swmbxy4rkqb-3}.lst-kix_4svt6a83kkcj-7>li{counter-increment:lst-ctn-kix_4svt6a83kkcj-7}.lst-kix_xhtesctf37aq-3>li{counter-increment:lst-ctn-kix_xhtesctf37aq-3}.lst-kix_f78yvp847vds-3>li:before{content:"\0025cf  "}.lst-kix_f78yvp847vds-4>li:before{content:"\0025cb  "}.lst-kix_f78yvp847vds-1>li:before{content:"\0025cb  "}.lst-kix_f78yvp847vds-5>li:before{content:"\0025a0  "}.lst-kix_f78yvp847vds-2>li:before{content:"\0025a0  "}.lst-kix_7r10h2uthn2q-2>li{counter-increment:lst-ctn-kix_7r10h2uthn2q-2}ol.lst-kix_vanikhlrvbhi-8.start{counter-reset:lst-ctn-kix_vanikhlrvbhi-8 0}ol.lst-kix_8a3lzhhfrh63-7.start{counter-reset:lst-ctn-kix_8a3lzhhfrh63-7 0}.lst-kix_f78yvp847vds-7>li:before{content:"\0025cb  "}.lst-kix_f78yvp847vds-8>li:before{content:"\0025a0  "}.lst-kix_xhtesctf37aq-0>li{counter-increment:lst-ctn-kix_xhtesctf37aq-0}.lst-kix_f78yvp847vds-6>li:before{content:"\0025cf  "}.lst-kix_a0td01vo5qv0-2>li:before{content:"" counter(lst-ctn-kix_a0td01vo5qv0-2,lower-roman) ". "}.lst-kix_5horeekser8-5>li:before{content:"\0025a0  "}ol.lst-kix_vanikhlrvbhi-5.start{counter-reset:lst-ctn-kix_vanikhlrvbhi-5 0}.lst-kix_vznncmgiycrc-3>li:before{content:"" counter(lst-ctn-kix_vznncmgiycrc-3,decimal) ". "}.lst-kix_vznncmgiycrc-5>li:before{content:"" counter(lst-ctn-kix_vznncmgiycrc-5,lower-roman) ". "}.lst-kix_a0td01vo5qv0-0>li:before{content:"" counter(lst-ctn-kix_a0td01vo5qv0-0,decimal) ". "}.lst-kix_a0td01vo5qv0-4>li:before{content:"" counter(lst-ctn-kix_a0td01vo5qv0-4,lower-latin) ". "}ol.lst-kix_7r10h2uthn2q-7{list-style-type:none}ol.lst-kix_7r10h2uthn2q-8{list-style-type:none}.lst-kix_a0td01vo5qv0-6>li:before{content:"" counter(lst-ctn-kix_a0td01vo5qv0-6,decimal) ". "}.lst-kix_5horeekser8-1>li:before{content:"\0025cb  "}ol.lst-kix_7r10h2uthn2q-5{list-style-type:none}ol.lst-kix_7r10h2uthn2q-6{list-style-type:none}ol.lst-kix_7r10h2uthn2q-3{list-style-type:none}.lst-kix_vznncmgiycrc-1>li:before{content:"" counter(lst-ctn-kix_vznncmgiycrc-1,decimal) ". "}.lst-kix_vznncmgiycrc-7>li:before{content:"" counter(lst-ctn-kix_vznncmgiycrc-7,lower-latin) ". "}ol.lst-kix_7r10h2uthn2q-4{list-style-type:none}.lst-kix_5horeekser8-3>li:before{content:"\0025cf  "}ol.lst-kix_7r10h2uthn2q-1{list-style-type:none}ol.lst-kix_7r10h2uthn2q-2{list-style-type:none}ol.lst-kix_7r10h2uthn2q-0{list-style-type:none}ul.lst-kix_try5avu93q8b-4{list-style-type:none}ul.lst-kix_try5avu93q8b-5{list-style-type:none}.lst-kix_8a3lzhhfrh63-3>li{counter-increment:lst-ctn-kix_8a3lzhhfrh63-3}ul.lst-kix_try5avu93q8b-2{list-style-type:none}.lst-kix_gcb83e31a733-3>li:before{content:"\0025cf  "}.lst-kix_gcb83e31a733-5>li:before{content:"\0025a0  "}ul.lst-kix_try5avu93q8b-3{list-style-type:none}.lst-kix_a0td01vo5qv0-8>li:before{content:"" counter(lst-ctn-kix_a0td01vo5qv0-8,lower-roman) ". "}ul.lst-kix_try5avu93q8b-0{list-style-type:none}ul.lst-kix_try5avu93q8b-1{list-style-type:none}ol.lst-kix_vdg0pe831poo-2.start{counter-reset:lst-ctn-kix_vdg0pe831poo-2 0}.lst-kix_vznncmgiycrc-5>li{counter-increment:lst-ctn-kix_vznncmgiycrc-5}.lst-kix_gcb83e31a733-1>li:before{content:"\0025cb  "}ol.lst-kix_7r10h2uthn2q-8.start{counter-reset:lst-ctn-kix_7r10h2uthn2q-8 0}.lst-kix_w2mfm9aadj54-7>li{counter-increment:lst-ctn-kix_w2mfm9aadj54-7}ol.lst-kix_vznncmgiycrc-3.start{counter-reset:lst-ctn-kix_vznncmgiycrc-3 0}.lst-kix_7r10h2uthn2q-3>li{counter-increment:lst-ctn-kix_7r10h2uthn2q-3}ol.lst-kix_vdg0pe831poo-7.start{counter-reset:lst-ctn-kix_vdg0pe831poo-7 0}.lst-kix_vanikhlrvbhi-8>li{counter-increment:lst-ctn-kix_vanikhlrvbhi-8}.lst-kix_uz8dg5pajhhs-5>li{counter-increment:lst-ctn-kix_uz8dg5pajhhs-5}ul.lst-kix_try5avu93q8b-8{list-style-type:none}ul.lst-kix_try5avu93q8b-6{list-style-type:none}ol.lst-kix_xhtesctf37aq-1.start{counter-reset:lst-ctn-kix_xhtesctf37aq-1 0}ul.lst-kix_try5avu93q8b-7{list-style-type:none}.lst-kix_iaondfgk5kmg-2>li:before{content:"\0025a0  "}.lst-kix_iaondfgk5kmg-0>li:before{content:"\0025cf  "}.lst-kix_8a3lzhhfrh63-2>li{counter-increment:lst-ctn-kix_8a3lzhhfrh63-2}.lst-kix_5horeekser8-7>li:before{content:"\0025cb  "}.lst-kix_4svt6a83kkcj-6>li{counter-increment:lst-ctn-kix_4svt6a83kkcj-6}ol.lst-kix_uz8dg5pajhhs-4.start{counter-reset:lst-ctn-kix_uz8dg5pajhhs-4 0}ol.lst-kix_j240t11xhkk2-1.start{counter-reset:lst-ctn-kix_j240t11xhkk2-1 0}ol.lst-kix_l2lmkt3v1wry-7{list-style-type:none}.lst-kix_vanikhlrvbhi-1>li{counter-increment:lst-ctn-kix_vanikhlrvbhi-1}ol.lst-kix_l2lmkt3v1wry-8{list-style-type:none}.lst-kix_xhtesctf37aq-4>li{counter-increment:lst-ctn-kix_xhtesctf37aq-4}.lst-kix_35gn96cywov7-2>li:before{content:"\0025a0  "}.lst-kix_vdg0pe831poo-5>li{counter-increment:lst-ctn-kix_vdg0pe831poo-5}.lst-kix_35gn96cywov7-0>li:before{content:"\0025cf  "}.lst-kix_j240t11xhkk2-3>li{counter-increment:lst-ctn-kix_j240t11xhkk2-3}ol.lst-kix_a0td01vo5qv0-1.start{counter-reset:lst-ctn-kix_a0td01vo5qv0-1 0}ol.lst-kix_7r10h2uthn2q-6.start{counter-reset:lst-ctn-kix_7r10h2uthn2q-6 0}.lst-kix_vanikhlrvbhi-7>li:before{content:"" counter(lst-ctn-kix_vanikhlrvbhi-7,lower-latin) ". "}.lst-kix_gcb83e31a733-7>li:before{content:"\0025cb  "}ol.lst-kix_vdg0pe831poo-5.start{counter-reset:lst-ctn-kix_vdg0pe831poo-5 0}ol.lst-kix_xhtesctf37aq-3.start{counter-reset:lst-ctn-kix_xhtesctf37aq-3 0}ol.lst-kix_l2lmkt3v1wry-0{list-style-type:none}ol.lst-kix_l2lmkt3v1wry-1{list-style-type:none}ol.lst-kix_l2lmkt3v1wry-2{list-style-type:none}ol.lst-kix_4svt6a83kkcj-8{list-style-type:none}ol.lst-kix_l2lmkt3v1wry-3{list-style-type:none}ol.lst-kix_4svt6a83kkcj-7{list-style-type:none}ol.lst-kix_l2lmkt3v1wry-4{list-style-type:none}ol.lst-kix_4svt6a83kkcj-6{list-style-type:none}ol.lst-kix_l2lmkt3v1wry-5{list-style-type:none}ol.lst-kix_4svt6a83kkcj-5{list-style-type:none}ol.lst-kix_l2lmkt3v1wry-6{list-style-type:none}ol.lst-kix_vznncmgiycrc-1.start{counter-reset:lst-ctn-kix_vznncmgiycrc-1 0}ol.lst-kix_4svt6a83kkcj-4{list-style-type:none}ol.lst-kix_4svt6a83kkcj-3{list-style-type:none}ol.lst-kix_4svt6a83kkcj-2{list-style-type:none}ol.lst-kix_4svt6a83kkcj-1{list-style-type:none}ol.lst-kix_4svt6a83kkcj-0{list-style-type:none}ol.lst-kix_xhtesctf37aq-0.start{counter-reset:lst-ctn-kix_xhtesctf37aq-0 0}.lst-kix_l2lmkt3v1wry-3>li:before{content:"" counter(lst-ctn-kix_l2lmkt3v1wry-3,decimal) ". "}.lst-kix_l2lmkt3v1wry-7>li:before{content:"" counter(lst-ctn-kix_l2lmkt3v1wry-7,lower-latin) ". "}ol.lst-kix_j240t11xhkk2-3.start{counter-reset:lst-ctn-kix_j240t11xhkk2-3 0}.lst-kix_l2lmkt3v1wry-6>li:before{content:"" counter(lst-ctn-kix_l2lmkt3v1wry-6,decimal) ". "}.lst-kix_j240t11xhkk2-2>li{counter-increment:lst-ctn-kix_j240t11xhkk2-2}ol.lst-kix_7swmbxy4rkqb-3{list-style-type:none}ol.lst-kix_7swmbxy4rkqb-2{list-style-type:none}ol.lst-kix_7swmbxy4rkqb-5{list-style-type:none}ol.lst-kix_7swmbxy4rkqb-4{list-style-type:none}ol.lst-kix_7swmbxy4rkqb-7{list-style-type:none}ol.lst-kix_7swmbxy4rkqb-6{list-style-type:none}ol.lst-kix_7swmbxy4rkqb-8{list-style-type:none}ol.lst-kix_a0td01vo5qv0-3.start{counter-reset:lst-ctn-kix_a0td01vo5qv0-3 0}ol.lst-kix_vznncmgiycrc-5.start{counter-reset:lst-ctn-kix_vznncmgiycrc-5 0}.lst-kix_xhtesctf37aq-8>li{counter-increment:lst-ctn-kix_xhtesctf37aq-8}.lst-kix_l2lmkt3v1wry-2>li:before{content:"" counter(lst-ctn-kix_l2lmkt3v1wry-2,lower-roman) ". "}.lst-kix_7swmbxy4rkqb-0>li{counter-increment:lst-ctn-kix_7swmbxy4rkqb-0}ol.lst-kix_7swmbxy4rkqb-1{list-style-type:none}ol.lst-kix_7swmbxy4rkqb-0{list-style-type:none}ol.lst-kix_7swmbxy4rkqb-7.start{counter-reset:lst-ctn-kix_7swmbxy4rkqb-7 0}ol.lst-kix_a0td01vo5qv0-8.start{counter-reset:lst-ctn-kix_a0td01vo5qv0-8 0}.lst-kix_35gn96cywov7-5>li:before{content:"\0025a0  "}.lst-kix_vdg0pe831poo-2>li{counter-increment:lst-ctn-kix_vdg0pe831poo-2}.lst-kix_uz8dg5pajhhs-2>li{counter-increment:lst-ctn-kix_uz8dg5pajhhs-2}.lst-kix_35gn96cywov7-4>li:before{content:"\0025cb  "}ol.lst-kix_uz8dg5pajhhs-3.start{counter-reset:lst-ctn-kix_uz8dg5pajhhs-3 0}.lst-kix_vdg0pe831poo-4>li{counter-increment:lst-ctn-kix_vdg0pe831poo-4}ul.lst-kix_35gn96cywov7-1{list-style-type:none}ul.lst-kix_35gn96cywov7-0{list-style-type:none}.lst-kix_7swmbxy4rkqb-2>li{counter-increment:lst-ctn-kix_7swmbxy4rkqb-2}ul.lst-kix_35gn96cywov7-3{list-style-type:none}ul.lst-kix_35gn96cywov7-2{list-style-type:none}ul.lst-kix_35gn96cywov7-5{list-style-type:none}ul.lst-kix_35gn96cywov7-4{list-style-type:none}ul.lst-kix_35gn96cywov7-7{list-style-type:none}.lst-kix_w2mfm9aadj54-2>li{counter-increment:lst-ctn-kix_w2mfm9aadj54-2}ul.lst-kix_35gn96cywov7-6{list-style-type:none}.lst-kix_35gn96cywov7-8>li:before{content:"\0025a0  "}ul.lst-kix_35gn96cywov7-8{list-style-type:none}ol.lst-kix_7r10h2uthn2q-4.start{counter-reset:lst-ctn-kix_7r10h2uthn2q-4 0}.lst-kix_uz8dg5pajhhs-4>li{counter-increment:lst-ctn-kix_uz8dg5pajhhs-4}ol.lst-kix_7swmbxy4rkqb-8.start{counter-reset:lst-ctn-kix_7swmbxy4rkqb-8 0}.lst-kix_7r10h2uthn2q-7>li:before{content:"" counter(lst-ctn-kix_7r10h2uthn2q-7,lower-latin) ". "}.lst-kix_w2mfm9aadj54-2>li:before{content:"" counter(lst-ctn-kix_w2mfm9aadj54-2,lower-roman) ". "}.lst-kix_a0td01vo5qv0-7>li{counter-increment:lst-ctn-kix_a0td01vo5qv0-7}.lst-kix_w2mfm9aadj54-1>li:before{content:"" counter(lst-ctn-kix_w2mfm9aadj54-1,decimal) ". "}ol.lst-kix_vanikhlrvbhi-0.start{counter-reset:lst-ctn-kix_vanikhlrvbhi-0 0}.lst-kix_iaondfgk5kmg-4>li:before{content:"\0025cb  "}.lst-kix_iaondfgk5kmg-5>li:before{content:"\0025a0  "}.lst-kix_7r10h2uthn2q-3>li:before{content:"" counter(lst-ctn-kix_7r10h2uthn2q-3,decimal) ". "}.lst-kix_7r10h2uthn2q-4>li:before{content:"" counter(lst-ctn-kix_7r10h2uthn2q-4,lower-latin) ". "}.lst-kix_j240t11xhkk2-0>li:before{content:"" counter(lst-ctn-kix_j240t11xhkk2-0,decimal) ". "}.lst-kix_vanikhlrvbhi-0>li{counter-increment:lst-ctn-kix_vanikhlrvbhi-0}.lst-kix_j240t11xhkk2-3>li:before{content:"" counter(lst-ctn-kix_j240t11xhkk2-3,decimal) ". "}.lst-kix_iaondfgk5kmg-8>li:before{content:"\0025a0  "}.lst-kix_7r10h2uthn2q-0>li:before{content:"" counter(lst-ctn-kix_7r10h2uthn2q-0,decimal) ". "}ol.lst-kix_7r10h2uthn2q-3.start{counter-reset:lst-ctn-kix_7r10h2uthn2q-3 0}.lst-kix_xhtesctf37aq-6>li{counter-increment:lst-ctn-kix_xhtesctf37aq-6}.lst-kix_j240t11xhkk2-7>li:before{content:"" counter(lst-ctn-kix_j240t11xhkk2-7,lower-latin) ". "}.lst-kix_x34yxjic08m9-7>li:before{content:"\0025cb  "}.lst-kix_x34yxjic08m9-8>li:before{content:"\0025a0  "}.lst-kix_j240t11xhkk2-4>li:before{content:"" counter(lst-ctn-kix_j240t11xhkk2-4,lower-latin) ". "}.lst-kix_j240t11xhkk2-8>li:before{content:"" counter(lst-ctn-kix_j240t11xhkk2-8,lower-roman) ". "}.lst-kix_8a3lzhhfrh63-7>li{counter-increment:lst-ctn-kix_8a3lzhhfrh63-7}.lst-kix_x34yxjic08m9-0>li:before{content:"\0025cf  "}.lst-kix_w2mfm9aadj54-6>li:before{content:"" counter(lst-ctn-kix_w2mfm9aadj54-6,decimal) ". "}.lst-kix_w2mfm9aadj54-6>li{counter-increment:lst-ctn-kix_w2mfm9aadj54-6}ol.lst-kix_uz8dg5pajhhs-2.start{counter-reset:lst-ctn-kix_uz8dg5pajhhs-2 0}ol.lst-kix_vanikhlrvbhi-1.start{counter-reset:lst-ctn-kix_vanikhlrvbhi-1 0}ol.lst-kix_j240t11xhkk2-4.start{counter-reset:lst-ctn-kix_j240t11xhkk2-4 0}.lst-kix_l2lmkt3v1wry-7>li{counter-increment:lst-ctn-kix_l2lmkt3v1wry-7}.lst-kix_7r10h2uthn2q-8>li:before{content:"" counter(lst-ctn-kix_7r10h2uthn2q-8,lower-roman) ". "}.lst-kix_x34yxjic08m9-3>li:before{content:"\0025cf  "}.lst-kix_x34yxjic08m9-4>li:before{content:"\0025cb  "}ol.lst-kix_vznncmgiycrc-4.start{counter-reset:lst-ctn-kix_vznncmgiycrc-4 0}ol.lst-kix_vdg0pe831poo-8.start{counter-reset:lst-ctn-kix_vdg0pe831poo-8 0}.lst-kix_w2mfm9aadj54-5>li:before{content:"" counter(lst-ctn-kix_w2mfm9aadj54-5,lower-roman) ". "}.lst-kix_vdg0pe831poo-0>li{counter-increment:lst-ctn-kix_vdg0pe831poo-0}.lst-kix_akcu7lyus4y1-8>li:before{content:"\0025a0  "}.lst-kix_7swmbxy4rkqb-7>li{counter-increment:lst-ctn-kix_7swmbxy4rkqb-7}.lst-kix_5horeekser8-4>li:before{content:"\0025cb  "}ol.lst-kix_a0td01vo5qv0-7.start{counter-reset:lst-ctn-kix_a0td01vo5qv0-7 0}.lst-kix_akcu7lyus4y1-4>li:before{content:"\0025cb  "}ul.lst-kix_x34yxjic08m9-0{list-style-type:none}.lst-kix_o7x3ybv1840o-3>li:before{content:"\0025cf  "}ol.lst-kix_a0td01vo5qv0-4.start{counter-reset:lst-ctn-kix_a0td01vo5qv0-4 0}ol.lst-kix_7r10h2uthn2q-2.start{counter-reset:lst-ctn-kix_7r10h2uthn2q-2 0}.lst-kix_a0td01vo5qv0-5>li:before{content:"" counter(lst-ctn-kix_a0td01vo5qv0-5,lower-roman) ". "}ul.lst-kix_aybwnlrw65ee-1{list-style-type:none}ul.lst-kix_aybwnlrw65ee-0{list-style-type:none}.lst-kix_vznncmgiycrc-0>li:before{content:"" counter(lst-ctn-kix_vznncmgiycrc-0,decimal) ". "}.lst-kix_vznncmgiycrc-8>li:before{content:"" counter(lst-ctn-kix_vznncmgiycrc-8,lower-roman) ". "}ul.lst-kix_aybwnlrw65ee-3{list-style-type:none}.lst-kix_akcu7lyus4y1-0>li:before{content:"\0025cf  "}ul.lst-kix_aybwnlrw65ee-2{list-style-type:none}ul.lst-kix_aybwnlrw65ee-5{list-style-type:none}.lst-kix_4svt6a83kkcj-3>li:before{content:"" counter(lst-ctn-kix_4svt6a83kkcj-3,decimal) ". "}.lst-kix_j240t11xhkk2-7>li{counter-increment:lst-ctn-kix_j240t11xhkk2-7}ul.lst-kix_aybwnlrw65ee-4{list-style-type:none}.lst-kix_l2lmkt3v1wry-2>li{counter-increment:lst-ctn-kix_l2lmkt3v1wry-2}ul.lst-kix_aybwnlrw65ee-7{list-style-type:none}.lst-kix_xhtesctf37aq-1>li{counter-increment:lst-ctn-kix_xhtesctf37aq-1}ul.lst-kix_aybwnlrw65ee-6{list-style-type:none}ul.lst-kix_aybwnlrw65ee-8{list-style-type:none}.lst-kix_4svt6a83kkcj-8>li{counter-increment:lst-ctn-kix_4svt6a83kkcj-8}.lst-kix_5horeekser8-0>li:before{content:"\0025cf  "}.lst-kix_fqu9qzrdl4q4-2>li:before{content:"\0025a0  "}.lst-kix_gcb83e31a733-2>li:before{content:"\0025a0  "}.lst-kix_vznncmgiycrc-7>li{counter-increment:lst-ctn-kix_vznncmgiycrc-7}ul.lst-kix_x34yxjic08m9-7{list-style-type:none}ul.lst-kix_x34yxjic08m9-8{list-style-type:none}.lst-kix_vdg0pe831poo-7>li{counter-increment:lst-ctn-kix_vdg0pe831poo-7}ul.lst-kix_x34yxjic08m9-5{list-style-type:none}.lst-kix_o7x3ybv1840o-7>li:before{content:"\0025cb  "}ol.lst-kix_vznncmgiycrc-6.start{counter-reset:lst-ctn-kix_vznncmgiycrc-6 0}ul.lst-kix_x34yxjic08m9-6{list-style-type:none}ul.lst-kix_x34yxjic08m9-3{list-style-type:none}.lst-kix_7r10h2uthn2q-1>li{counter-increment:lst-ctn-kix_7r10h2uthn2q-1}ul.lst-kix_x34yxjic08m9-4{list-style-type:none}ul.lst-kix_x34yxjic08m9-1{list-style-type:none}ul.lst-kix_x34yxjic08m9-2{list-style-type:none}.lst-kix_iaondfgk5kmg-1>li:before{content:"\0025cb  "}.lst-kix_5horeekser8-8>li:before{content:"\0025a0  "}.lst-kix_4svt6a83kkcj-7>li:before{content:"" counter(lst-ctn-kix_4svt6a83kkcj-7,lower-latin) ". "}.lst-kix_a0td01vo5qv0-1>li:before{content:"" counter(lst-ctn-kix_a0td01vo5qv0-1,decimal) ". "}.lst-kix_8a3lzhhfrh63-5>li{counter-increment:lst-ctn-kix_8a3lzhhfrh63-5}.lst-kix_xhtesctf37aq-3>li:before{content:"" counter(lst-ctn-kix_xhtesctf37aq-3,decimal) ". "}.lst-kix_uz8dg5pajhhs-5>li:before{content:"" counter(lst-ctn-kix_uz8dg5pajhhs-5,lower-roman) ". "}ol.lst-kix_j240t11xhkk2-8.start{counter-reset:lst-ctn-kix_j240t11xhkk2-8 0}.lst-kix_uz8dg5pajhhs-1>li:before{content:"" counter(lst-ctn-kix_uz8dg5pajhhs-1,lower-latin) ". "}.lst-kix_vznncmgiycrc-2>li{counter-increment:lst-ctn-kix_vznncmgiycrc-2}ol.lst-kix_vznncmgiycrc-7.start{counter-reset:lst-ctn-kix_vznncmgiycrc-7 0}ul.lst-kix_gda88x8nt1vs-0{list-style-type:none}ul.lst-kix_gda88x8nt1vs-2{list-style-type:none}ul.lst-kix_gda88x8nt1vs-1{list-style-type:none}ul.lst-kix_gda88x8nt1vs-4{list-style-type:none}ul.lst-kix_gda88x8nt1vs-3{list-style-type:none}ul.lst-kix_gda88x8nt1vs-6{list-style-type:none}.lst-kix_xhtesctf37aq-7>li:before{content:"" counter(lst-ctn-kix_xhtesctf37aq-7,lower-latin) ". "}ul.lst-kix_gda88x8nt1vs-5{list-style-type:none}ul.lst-kix_gda88x8nt1vs-8{list-style-type:none}.lst-kix_35gn96cywov7-1>li:before{content:"\0025cb  "}ol.lst-kix_vznncmgiycrc-8.start{counter-reset:lst-ctn-kix_vznncmgiycrc-8 0}ol.lst-kix_a0td01vo5qv0-6.start{counter-reset:lst-ctn-kix_a0td01vo5qv0-6 0}ul.lst-kix_gda88x8nt1vs-7{list-style-type:none}ol.lst-kix_7r10h2uthn2q-0.start{counter-reset:lst-ctn-kix_7r10h2uthn2q-0 0}.lst-kix_8a3lzhhfrh63-0>li{counter-increment:lst-ctn-kix_8a3lzhhfrh63-0}ol.lst-kix_j240t11xhkk2-7.start{counter-reset:lst-ctn-kix_j240t11xhkk2-7 0}.lst-kix_w2mfm9aadj54-4>li{counter-increment:lst-ctn-kix_w2mfm9aadj54-4}.lst-kix_j240t11xhkk2-0>li{counter-increment:lst-ctn-kix_j240t11xhkk2-0}.lst-kix_vanikhlrvbhi-8>li:before{content:"" counter(lst-ctn-kix_vanikhlrvbhi-8,lower-roman) ". "}.lst-kix_a0td01vo5qv0-2>li{counter-increment:lst-ctn-kix_a0td01vo5qv0-2}.lst-kix_gcb83e31a733-6>li:before{content:"\0025cf  "}.lst-kix_vdg0pe831poo-5>li:before{content:"" counter(lst-ctn-kix_vdg0pe831poo-5,lower-roman) ". "}.lst-kix_vdg0pe831poo-1>li:before{content:"" counter(lst-ctn-kix_vdg0pe831poo-1,decimal) ". "}.lst-kix_vznncmgiycrc-4>li:before{content:"" counter(lst-ctn-kix_vznncmgiycrc-4,lower-latin) ". "}ol{margin:0;padding:0}table td,table th{padding:0}.c2{margin-left:72pt;padding-top:0pt;padding-left:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c1{margin-left:36pt;padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:left;height:11pt}.c3{margin-left:36pt;padding-top:0pt;padding-left:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:left}.c0{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Arial";font-style:normal}.c11{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:14pt;font-family:"Arial";font-style:normal}.c14{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:11pt;font-family:"Arial";font-style:normal}.c6{padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:left;height:11pt}.c7{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c10{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c4{padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:center}.c18{background-color:#ffffff;padding:18pt 72pt 72pt 72pt}.c16{font-size:14pt;font-weight:700}.c13{margin-left:36pt;padding-left:0pt}.c5{padding:0;margin:0}.c8{font-size:12pt;font-weight:700}.c12{margin-left:72pt;height:11pt}.c17{margin-left:36pt}.c15{height:11pt}.c9{font-size:12pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style>
<div class="container">
<div class="c18">
    <p class="c7">
        <span class="c14">The simplest way to find which question you are looking for is to limit your search by category and sub-category. &nbsp;The Categories and subcategories are broken down as follows:</span>
    </p>
    <p class="c7 c15">
        <span class="c14"></span>
    </p>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0 start" start="1">
        <li class="c7 c13">
            <span class="c8">Company Info &ndash; </span>
            <span class="c0">here you will find basic Sharp Information</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">History and Overview - Basic overview of Sharps History and basic information </span>

        </li>
        <li class="c2">
            <span class="c0">Executives - information on Sharp&rsquo;s executives as well as an organization chart</span>

        </li>
        <li class="c2">
            <span class="c0">Legal - provides basic legal information </span>

        </li>
        <li class="c2">
            <span class="c0">Manufacturing - describes how Sharp&rsquo;s products are manufactured and information about Sharp&rsquo;s manufactures</span>


        </li>
        <li class="c2">
            <span class="c0">Sales - information on Sharp&rsquo;s current sales</span>

        </li>
        <li class="c2">
            <span class="c9">Planning - how Sharp plans its inventory management and equipment conversion</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="2">
        <li class="c7 c13">
            <span class="c8">Industrial </span>
            <span class="c8">Qualifications - </span>
            <span class="c0">here you will information on why sharp qualifies for this contract</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">Financial Stability - information related to sharps current financial situation (i.e - financial statements)</span>

        </li>
        <li class="c2">
            <span class="c0">Market-Share Questions- information relating to sharps standing the industry </span>

        </li>
        <li class="c2">
            <span class="c0">Awards - describes the awards Sharp as a company has earned</span>

        </li>
        <li class="c2">
            <span class="c0">Insurance - contains Sharp&rsquo;s insurance information </span>

        </li>
        <li class="c2">
            <span class="c0">References- contains the reference lists</span>

        </li>
        <li class="c2">
            <span class="c9">Licenses &amp; Certifications</span>
            <span class="c0">&nbsp;- describes the Licenses and Certifications Sharp has</span>

        </li>
        <li class="c2">
            <span class="c0">Why Sharp - describes the differences between Sharp and its competitors</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="3">
        <li class="c7 c13">
            <span class="c8">HR Info- </span>
            <span class="c0">information relating to Sharp&rsquo;s compliance to Government regulations</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">ADA Documentation</span>

        </li>
        <li class="c2">
            <span class="c0">E-verified</span>

        </li>
        <li class="c2">
            <span class="c0">Equal Opportunity Employment</span>

        </li>
        <li class="c2">
            <span class="c0">Supply Chain</span>

        </li>
        <li class="c2">
            <span class="c0">Women in Military</span>

        </li>

    </ol>
    <p class="c7 c15">
        <span class="c0"></span>

    </p>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="4">
        <li class="c7 c13">
            <span class="c8">Selling &amp; Distribution - </span>
            <span class="c0">information relating to how sharp sells and distributes its products</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">Order Processing Procedure - describes the process of how products are ordered</span>

        </li>
        <li class="c2">
            <span class="c0">Dealer Networks - describes the dealers role in selling and distributing products</span>

        </li>
        <li class="c2">
            <span class="c0">Sales Force - describes Sharp Corporation&rsquo;s role in selling and distributing products</span>

        </li>
        <li class="c2">
            <span class="c0">Delivery - describes how products will be delivered</span>

        </li>
        <li class="c2">
            <span class="c9">SBS Network - describes the SBS branches&rsquo; role in selling and distributing products</span>

        </li>
        <li class="c2">
            <span class="c0">Inventory- answers questions pertaining to inventory held at all times</span>

        </li>

    </ol>
    <p class="c7 c15">
        <span class="c0"></span>

    </p>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="5">
        <li class="c7 c13">
            <span class="c8">Marketing Ability- </span>
            <span class="c0">informations relating to how Sharp markets its products</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">Marketing Plans - how Sharp plans to market its products </span>

        </li>

    </ol>
    <p class="c7 c12">
        <span class="c0"></span>

    </p>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="6">
        <li class="c7 c13">
            <span class="c8">Warranty - </span>
            <span class="c0">this category contains basic warranty info and return policies</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">Warranty Info - basic warranty information for Sharp&rsquo;s products</span>

        </li>
        <li class="c2">
            <span class="c9">Return Authorization</span>
            <span class="c0">&nbsp;- process of how Sharp products can be returned</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="7">
        <li class="c7 c13">
            <span class="c8">Pricing</span>
            <span class="c9">- information relating to the price list of the products and the terms of payment applicable to Sharp&rsquo;s products</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">Pricing and Payment Terms- provides information about the price list, payment terms and MSRP. </span>
        </li>
        <li class="c2">
            <span class="c0">Fee - provides information on the Fees Sharp charges</span>

        </li>
        <li class="c2">
            <span class="c0">Discount - provides information on possible discounts for Sharp products</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="8">
        <li class="c7 c13">
            <span class="c8">Copiers &amp; Printers</span>
            <span class="c9">- here you will find all the information regarding Sharps&rsquo; copiers and printers</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">Hardware - this subcategory specifically relates to hardware information </span>

        </li>
        <li class="c2">
            <span class="c0">Software - this subcategory specifically relates to software information </span>

        </li>
        <li class="c2">
            <span class="c0">Energy &amp; Environmental friendly features - Here you will find information on the environmental features Sharps&rsquo; copiers have</span>

        </li>
        <li class="c2">
            <span class="c0">Notable Features - here you will find features that make Sharp products stand out</span>

        </li>
        <li class="c2">
            <span class="c0">Third Party Products - here you will find information relating to sourced goods</span>

        </li>
        <li class="c2">
            <span class="c0">Awards - here you will find all the awards sharp&rsquo;s copiers and printers have won</span>

        </li>
        <li class="c2">
            <span class="c0">MSD - this category contains links to the sharpusa.com website where the printer&rsquo;s MSD can be found under product safety</span>

        </li>
        <li class="c2">
            <span class="c0">Security - this subcategory contains security information regarding &nbsp;copiers and printers</span>

        </li>

    </ol>
    <p class="c7 c15">
        <span class="c0">

        </span>

    </p>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="9">
        <li class="c7 c13">
            <span class="c8">Displays - </span>
            <span class="c0">contains information on the display products sold by Sharp</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">Notable features- describes the features which make Sharp&rsquo;s products stand out from their competitors</span>

        </li>

    </ol>
    <p class="c7 c15">
        <span class="c0"></span>

    </p>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="10">
        <li class="c7 c13">
            <span class="c8">&nbsp;Education and Healthcare- </span>
            <span class="c0">here you will find information relating to education and healthcare </span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">Education</span>

        </li>
        <li class="c2">
            <span class="c0">Healthcare</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="11">
        <li class="c7 c13">
            <span class="c8">Environmental Policies</span>
            <span class="c0">- here you will find information relating to Sharp&rsquo;s environmental policies and programs</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">Company Philosophy- here you find information relating to Sharp&rsquo;s environmental programs and policies</span>

        </li>
        <li class="c2">
            <span class="c9">Recycling Programs</span>
            <span class="c0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- here you will find information relating to recycling programs for Sharp&rsquo;s products</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="12">
        <li class="c7 c13">
            <span class="c8">Service &amp; Training - </span
                ><span class="c0">here you will find information relating to the services, support and training offered by Sharp, SBS and dealers</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">Sharp Support and Services- here you will find information about Sharp&rsquo;s services and support &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

        </li>
        <li class="c2">
            <span class="c0">Dealer Support and Services - here you will find how Sharp&rsquo;s authorized dealers provide technical support</span>

        </li>
        <li class="c2">
            <span class="c0">Escalation process - information regarding how service calls are taking and passed through the service team</span>

        </li>
        <li class="c2">
            <span class="c0">MICAS - Here isl information pertaining to Sharp&rsquo;s MICAS software</span>

        </li>
        <li class="c2">
            <span class="c0">Training Programs- here you will &nbsp;find how sharp employees will train the customer to use the product</span>

        </li>
        <li class="c2">
            <span class="c0">SBS Support and Services- here you will find information relating to SBS&rsquo;s services and support </span>

        </li>

    </ol>
    <p class="c7 c15">
        <span class="c0"></span>

    </p>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="13">
        <li class="c7 c13">
            <span class="c8">&nbsp;Disaster Recovery</span>
            <span class="c0">&nbsp;- here you will find information regarding how Sharp prepares for different types of disasters</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">Company Plan- here you will find information relating to Sharp&rsquo;s plan during a disaster </span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-0" start="14">
        <li class="c7 c13">
            <span class="c8">Security </span>
            <span class="c9">- here you will find information on Sharp&rsquo;s IT department</span>

        </li>

    </ol>
    <ol class="c5 lst-kix_8a3lzhhfrh63-1 start" start="1">
        <li class="c2">
            <span class="c0">IT Security</span>

        </li>

    </ol>
    <p class="c7 c15">
        <span class="c0"></span>

    </p>

</div>
</div>
    </asp:Content>
<%--  --%>