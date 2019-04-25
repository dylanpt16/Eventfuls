import React from 'react';
import {
  Route,
  Link,
  Switch,
  HashRouter
} from 'react-router-dom';

import HeaderContainer from './header/header_container';
import SessionFormContainer from './session_form/session_form_container';
import EventFormContainer from './event_form/event_form_container';
import EventShowContainer from './event_show/event_show_container';
import GroupShowContainer from './group_show/group_show_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import FrontPage from './front_page/front_page';
import Footer from './footer/footer';

const App = () => (
  <div className="page">
    <div className="navbar navbar-default navbar-fixed-top">
      <HeaderContainer />
    </div>
    <div className="page-content">
      <div className="page-container">
        <Switch>
          <Route exact path="/" component={FrontPage} />

          <AuthRoute path="/login" component={SessionFormContainer} />
          <AuthRoute path="/signup" component={SessionFormContainer} />
          <ProtectedRoute path="/event" component={EventFormContainer} />
          <ProtectedRoute path="/group" component={EventFormContainer} />
          <ProtectedRoute  path="/events/:eventId" component={EventShowContainer} />
          <ProtectedRoute  path="/groups/:groupId" component={GroupShowContainer} />
        </Switch>
        <Footer />
      </div>
    </div>
  </div>
);

export default App;
