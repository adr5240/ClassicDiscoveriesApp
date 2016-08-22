module.exports = {
  overlay: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    backgroundColor: 'rgba(255, 255, 255, 0.75_)',
  },

  content: {
    position: 'relative',
    top: '100px',
    left: '15%',
    bottom: '100px',
    height: '600px',
    width: '800px',
    backgroundColor: '#eee',
    border: '1px solid black',
    background: '#fff',
    borderRadius: '4px',
    outline: 'none',
    padding: '20px',
    opacity: '0',
    transition: 'opacity 0.5s'
  }
};
