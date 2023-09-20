// test commit in github location dpaul
// polyfill Object.assign(), Array.includes() etc
import "babel-polyfill";
// expose jquery for debugging in console, and for use by Optimizely
import $ from 'jquery';       window.$ = $; window.jQuery = $;
import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { reduxStoreConfig } from './sample-react-component/reduxStoreConfig';
// This file represents an entry point for all JS to be used in external applications.
// It provides a convienient way to import some or all of the components
import EmailSignup, {userAlreadySignedUp} from "./email-signup";
import EndlessScroll from "./endless-scroll";
import GlobalNavigation from "./global-navigation";
import SelectNavigation from "./select-navigation";
import SampleComponent from "./sample-component";
import SampleReactComponent from "./sample-react-component/index";
import sampleReactComponentReducer from "./sample-react-component/SampleReactComponentReducer";
import Slider from "./slider";
import AgeGateComponent from "./video-player/age-gate-react/index";
import VideoPlayer from "./video-player";
import VideoBackground from './video-background';
import VideoPlayerSimple from "./video-player-simple";
import MegaStrip from './hero-megastrip';
import decorateSymbols from './decorated-symbols'
import ScheduleDateSelector from "./schedule-date-selector";
import CountdownWidget from "./countdown-widget";
import Slideshow from "./slideshow";
import Analytics from "./analytics";
import ReadMore from "./read-more";
import StickyBanner from "./sticky-banner";
import PeekABooBanner from "./peek-a-boo-banner";
import ScheduleGrid from "./schedule-grid";
import Modal from "./modal";
import Notification from "./notification";
import Variations from "./variations";
import VariationControls from "./variations/controls";
import TvProvidersModal from "./tv-providers-modal";
import StreamingModal from "./streaming-modal";
import AbandonedCartModal from "./abandoned-cart-modal";
import TermsModal from "./terms-modal";
import HashChange from "./hash-change";
import * as LazySizesSupport from "./responsive-images";
import ScrollbarDimensions from './measure-scrollbars';
import ConsoleLogSettings from './console-log-settings';
import FormPreviewModal from './form-preview-modal';
import ContactModal from './contact-modal';
import CastDetailsGrid from './cast-details-grid';
import ProviderPseudoTable from './provider-pseudo-table';

export {
  $,
  _,
  React,
  ReactDOM,
  Provider,
  reduxStoreConfig,
  EmailSignup,
  AgeGateComponent,
  EndlessScroll,
  GlobalNavigation,
  SelectNavigation,
  SampleComponent,
  SampleReactComponent,
  sampleReactComponentReducer,
  ScheduleDateSelector,
  Slider,
  VideoPlayer,
  VideoBackground,
  VideoPlayerSimple,
  CountdownWidget,
  Analytics,
  ReadMore,
  StickyBanner,
  PeekABooBanner,
  ScheduleGrid,
  Modal,
  MegaStrip,
  decorateSymbols,
  Notification,
  Variations,
  VariationControls,
  TvProvidersModal,
  StreamingModal,
  AbandonedCartModal,
  TermsModal,
  HashChange,
  ScrollbarDimensions,
  Slideshow,
  LazySizesSupport,
  ConsoleLogSettings,
  FormPreviewModal,
  ContactModal,
  CastDetailsGrid,
  ProviderPseudoTable,
}
