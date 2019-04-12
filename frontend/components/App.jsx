import React from 'react';
import {
  Route,
  Link,
  Switch,
  HashRouter
} from 'react-router-dom';

import HeaderContainer from './header/header_container';
import GreetingContainer from './greeting/greeting_container';
import SessionFormContainer from './session_form/session_form_container';
import EventFormContainer from './event_form/event_form_container';
import EventShowContainer from './event_show/event_show_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import SlideShow from './front_page/slideshow';
import SearchContainer from './front_page/search_container';
import Footer from './footer/footer';

const App = () => (
  <div className="page">
    <div className="navbar navbar-default navbar-fixed-top">
      <HeaderContainer />
    </div>
    <div className="page-content">
      <div className="page-container">
        <Route exact path="/" component={SlideShow} />
        <Route exact path="/" component={SearchContainer} />
        <Switch>
          <AuthRoute path="/login" component={SessionFormContainer} />
          <AuthRoute path="/signup" component={SessionFormContainer} />
          <ProtectedRoute path="/event" component={EventFormContainer} />
          <ProtectedRoute path="/group" component={EventFormContainer} />
          <ProtectedRoute  path="/events/:eventId" component={EventShowContainer} />
        </Switch>
      </div>
      <Footer />
    </div>
  </div>
);

export default App;
