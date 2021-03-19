<li class="side-menus {{ Request::is('*') ? 'active' : '' }}">
    <a class="nav-link" href="/">
        <i class=" fas fa-building"></i><span>Dashboard</span>
    </a>
</li>
<li class="side-menus {{ Request::is('accountTypes*') ? 'active' : '' }}">
    <a class="nav-link" href="{{ route('accountTypes.index') }}"><i class="fas fa-building"></i><span>Account Types</span></a>
</li>

<li class="side-menus {{ Request::is('accountManagers*') ? 'active' : '' }}">
    <a class="nav-link" href="{{ route('accountManagers.index') }}"><i class="fas fa-building"></i><span>Account Managers</span></a>
</li>

<li class="side-menus {{ Request::is('blacklistedClients*') ? 'active' : '' }}">
    <a class="nav-link" href="{{ route('blacklistedClients.index') }}"><i class="fas fa-building"></i><span>Blacklisted Clients</span></a>
</li>





