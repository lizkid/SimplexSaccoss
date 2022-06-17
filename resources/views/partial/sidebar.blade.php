<!-- Left Sidebar - style you can find in sidebar.scss  -->
<!-- ============================================================== -->
<aside class="left-sidebar" data-sidebarbg="skin5">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav" class="p-t-30">

                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{url('/dashboard')}}" aria-expanded="false">
                        <i class="fas fa-tachometer-alt"></i><span class="hide-menu">Dashboard</span>
                    </a>
                </li>



                <li class="sidebar-item">

                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-map"></i><span class="hide-menu">Contribution</span>
                    </a>

                    <ul aria-expanded="false" class="collapse  first-level">

                        <li class="sidebar-item">
                            <a href="{{url('/contributions')}}" class="sidebar-link">
                                <i class="mdi mdi-view-sequential"></i><span class="hide-menu">monthly Contribution</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="{{url('/contributions/social-contributions')}}" class="sidebar-link">
                                <i class="fas fa-columns"></i><span class="hide-menu">Social Contribution</span>
                            </a>
                        </li>

                    </ul>
                </li>

                <li class="sidebar-item">

                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-users"></i><span class="hide-menu">Members</span>
                    </a>

                    <ul aria-expanded="false" class="collapse  first-level">

                        <li class="sidebar-item">
                            <a href="{{url('/members')}}" class="sidebar-link">
                                <i class="mdi mdi-view-sequential"></i><span class="hide-menu">Registered Members</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="{{url('/members/terminated-members')}}" class="sidebar-link">
                                <i class="fas fa-columns"></i><span class="hide-menu">Terminated Members</span>
                            </a>
                        </li>

                    </ul>
                </li>

                <li class="sidebar-item">

                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class=" fas fa-hands-helping"></i><span class="hide-menu">Loan</span>
                    </a>

                    <ul aria-expanded="false" class="collapse  first-level">

                        <li class="sidebar-item">
                            <a href="{{url('/loan')}}" class="sidebar-link">
                                <i class="mdi mdi-view-sequential"></i><span class="hide-menu">Loan Requests</span>
                            </a>
                        </li>

{{--                        <li class="sidebar-item">--}}
{{--                            <a href="{{url('/radiology-report')}}" class="sidebar-link">--}}
{{--                                <i class="fas fa-columns"></i><span class="hide-menu">Paid Loan</span>--}}
{{--                            </a>--}}
{{--                        </li>--}}

{{--                        <li class="sidebar-item">--}}
{{--                            <a href="{{url('/radiology-requests')}}" class="sidebar-link">--}}
{{--                                <i class="mdi mdi-view-sequential"></i><span class="hide-menu">Unpaid Loan</span>--}}
{{--                            </a>--}}
{{--                        </li>--}}

{{--                        <li class="sidebar-item">--}}
{{--                            <a href="{{url('/radiology-report')}}" class="sidebar-link">--}}
{{--                                <i class="fas fa-columns"></i><span class="hide-menu">Rejected Loan</span>--}}
{{--                            </a>--}}
{{--                        </li>--}}



                    </ul>
                </li>

                <li class="sidebar-item">

                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-x-ray"></i><span class="hide-menu">Payments</span>
                    </a>

                    <ul aria-expanded="false" class="collapse  first-level">

                        <li class="sidebar-item">
                            <a href="{{url('/payments')}}" class="sidebar-link">
                                <i class="mdi mdi-view-sequential"></i><span class="hide-menu">Event payment Requests</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="{{url('/payments/paid-transactions')}}" class="sidebar-link">
                                <i class="fas fa-columns"></i><span class="hide-menu">Paid Transactions</span>
                            </a>
                        </li>

                    </ul>
                </li>

                <li class="sidebar-item">

                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-cog"></i><span class="hide-menu">Management </span>
                    </a>

                    <ul aria-expanded="false" class="collapse  first-level">


                        <li class="sidebar-item">
                            <a href="{{url('/services')}}" class="sidebar-link">
                                <i class="fas fa-people-carry"></i><span class="hide-menu">Users </span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="{{url('lab/lab-tests')}}" class="sidebar-link">
                                <i class="fas fa-briefcase"></i><span class="hide-menu">Roles</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="{{url('lab/specimen')}}" class="sidebar-link">
                                <i class="fas fa-briefcase"></i><span class="hide-menu">Shares</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="{{url('lab/laboratory-findings')}}" class="sidebar-link">
                                <i class="fas fa-briefcase"></i><span class="hide-menu">Interest Rate</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="{{url('/radiology-tests')}}" class="sidebar-link">
                                <i class="fas fa-briefcase"></i><span class="hide-menu">Loan Duration</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="{{url('/radiology-findings')}}" class="sidebar-link">
                                <i class="fas fa-briefcase"></i><span class="hide-menu">Event Types</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="{{url('/specialists')}}" class="sidebar-link">
                                <i class="far fa-gem"></i><span class="hide-menu">Specialists </span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="{{url('/departments')}}" class="sidebar-link">
                                <i class="fas fa-sitemap"></i><span class="hide-menu">Social Fixed Amount</span>
                            </a>
                        </li>




                    </ul>

                </li>
{{--                @endcan--}}

            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>
<!-- ============================================================== -->
<!-- End Left Sidebar - style you can find in sidebar.scss  -->
