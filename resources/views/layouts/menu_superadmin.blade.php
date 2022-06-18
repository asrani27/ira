<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column text-sm" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item">
            <a href="/beranda" class="nav-link {{Request::is('beranda') ? 'active' : ''}}">
                <i class="nav-icon fas fa-home"></i>
                <p>
                    Beranda
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/adminp" class="nav-link {{Request::is('admin*') ? 'active' : ''}}">
                <i class="nav-icon fa fa-list"></i>
                <p>
                    Admin
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/pangkalan" class="nav-link {{Request::is('pangkalan*') ? 'active' : ''}}">
                <i class="nav-icon fa fa-list"></i>
                <p>
                    Pangkalan
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/angkutan" class="nav-link {{Request::is('angkutan*') ? 'active' : ''}}">
                <i class="nav-icon fas fa-list"></i>
                <p>
                    Angkutan
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/driver" class="nav-link {{Request::is('driver*') ? 'active' : ''}}">
                <i class="nav-icon fas fa-list"></i>
                <p>
                    Driver
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/pembayaran" class="nav-link {{Request::is('pembayaran*') ? 'active' : ''}}">
                <i class="nav-icon fas fa-list"></i>
                <p>
                    Pembayaran
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/penerimaan" class="nav-link {{Request::is('penerimaan*') ? 'active' : ''}}">
                <i class="nav-icon fas fa-list"></i>
                <p>
                    Penerimaan
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/pengiriman" class="nav-link {{Request::is('pengiriman*') ? 'active' : ''}}">
                <i class="nav-icon fas fa-list"></i>
                <p>
                    Pengiriman
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/laporan" class="nav-link {{Request::is('laporan*') ? 'active' : ''}}">
                <i class="nav-icon fas fa-list"></i>
                <p>
                    Laporan
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="/logout" class="nav-link">
                <i class="nav-icon fas fa-sign-out-alt"></i>
                <p>
                    Logout
                </p>
            </a>
        </li>
    </ul>
</nav>