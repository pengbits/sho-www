import $ from 'jquery';

class SampleComponent {
  constructor(cfg) {
    this.el = $(cfg.el);
    throw new Error('checking source maps');
  } 
   
}

export default SampleComponent;