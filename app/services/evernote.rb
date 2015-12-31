class EvernoteService
  def initialize(auth_token, notestore_url)
    @auth_token = auth_token
    @notestore_url = notestore_url
  end

  def notebooks
    noteStoreTransport = Thrift::HTTPClientTransport.new(@notestore_url)
    noteStoreProtocol = Thrift::BinaryProtocol.new(noteStoreTransport)
    noteStore = Evernote::EDAM::NoteStore::NoteStore::Client.new(noteStoreProtocol)
    noteStore.listNotebooks(@auth_token)
  end
end
