<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<div id="content"> 
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
		<script src="https://unpkg.com/peerjs@1.5.2/dist/peerjs.min.js"></script>
		<style>
			:root {
				--primary-color: #007bff;
				--secondary-color: #007bff;
				--success-color: #42b72a;
				--danger-color: #f02849;
				--text-color: #1c1e21;
				--subtle-text-color: #65676b;
				--bg-color: #f0f2f5;
				--card-bg-color: #ffffff;
			}

			body {
				font-family: 'Segoe UI', Arial, sans-serif;
				background: var(--bg-color);
				margin: 0;
				padding: 0;
				display: flex;
				justify-content: center;
				align-items: center;
				
			}

			.app-container {
				background: var(--card-bg-color);
				border-radius: 16px;
			
				padding: 5px;
				max-width: 1200px;
				width: 95%;
				text-align: center;
				position: relative;
			}

			h1 {
				color: var(--primary-color);
		   
				font-size: 1.2rem;
				font-weight: 600;
			}

			.main-layout {
				display: flex;
				gap: 20px;
				
			}

			.video-section {
				flex: 2; /* Chiếm 2/3 không gian */
				display: flex;
				flex-direction: column;
				gap: 15px;
			}
			
			.chat-section {
				flex: 1; /* Chiếm 1/3 không gian */
				display: flex;
				flex-direction: column;
				background: #f9f9f9;
				border-radius: 12px;
				padding: 15px;
				box-shadow: inset 0 2px 4px rgba(0,0,0,0.05);
			}

			.id-info {
				display: flex;
				justify-content: center;
				gap: 10px;
				flex-wrap: wrap;
				margin-bottom: 5px;
			}

			.id-info p {
				margin: 0;
				font-size: 14px;
				color: var(--subtle-text-color);
				font-weight: 600;
			}

			#status {
				font-style: italic;
				color: #ff1a00;
				font-size: 14px;
			}

			.video-container {
				display: flex;
				justify-content: center;
				align-items: center;
				flex-grow: 1; /* Tự động co giãn theo chiều cao */
				height: 400px;
				transition: all 0.5s ease;
			}

			.video-wrapper {
				position: relative;
				width: 100%;
				height: 100%;
				border-radius: 12px;
				background: #1b1a1a8a;
				box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
				overflow: hidden;
			}

			.local-video-in-corner {
				position: absolute;
				top: 20px;
				right: 20px;
				width: 210px;
				height: 150px;
				z-index: 10;
				border-radius: 12px;
				overflow: hidden;
				box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
			}

			.local-video-in-corner video {
				border-radius: 12px;
			}

			.video-container.call-active {
				height: 450px;
			}

			.video-label {
				position: absolute;
				bottom: 10px;
				right: 10px;
				background: rgba(0, 0, 0, 0.5);
				color: white;
				padding: 4px 8px;
				border-radius: 8px;
				font-size: 0.8rem;
				z-index: 15;
			}

			.remote-status {
				position: absolute;
				top: 10px;
				left: 10px;
				display: flex;
				gap: 8px;
				color: white;
				font-size: 1.2rem;
				background: rgba(0, 0, 0, 0.5);
				padding: 6px 10px;
				border-radius: 8px;
				z-index: 11;
			}

			.remote-status .disabled {
				color: var(--danger-color);
			}

			.controls {
				display: flex;
				gap: 20px;
				justify-content: center;
				align-items: center;
				padding: 10px;
				background: rgba(255, 255, 255, 0.5);
				border-radius: 10px;
				width: 100%;
			}

			.controls button {
				border: none;
				border-radius: 50%;
				width: 50px;
				height: 50px;
				display: flex;
				justify-content: center;
				align-items: center;
				font-size: 16px;
				cursor: pointer;
				color: white;
				box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
			}

			.btn-call {
				background: var(--success-color);
			}

			.btn-end {
				background: var(--danger-color);
			}

			.btn-toggle {
				background: var(--secondary-color);
				color: var(--text-color);
			}

			#peerIdInput {
				padding: 12px 18px;
				border-radius: 30px;
				border: 1px solid #ccc;
				flex-grow: 1;
				text-align: center;
				font-size: 1rem;
			}

			#incomingCallPopup {
				display: none;
				position: fixed;
				top: 50%;
				left: 50%;
				transform: translate(-50%, -50%);
				background: var(--card-bg-color);
				border-radius: 16px;
				padding: 30px;
				box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
				text-align: center;
				z-index: 1000;
			}

			#incomingCallPopup h2 {
				color: var(--primary-color);
				margin-bottom: 12px;
				font-size: 1rem;
			}

			#incomingCallPopup button {
				padding: 12px 25px;
				margin: 0 12px;
				border: none;
				border-radius: 30px;
				font-size: 12px;
				cursor: pointer;
				font-weight: bold;
			}

			#incomingCallPopup img {
				width: 90px;
				height: 90px;
				border-radius: 50%;
				border: 3px solid #fff;
				margin-bottom: 10px;
			}

			#acceptCallButton {
				background: var(--success-color);
				color: white;
			}

			#rejectCallButton {
				background: var(--danger-color);
				color: white;
			}

			#copyIdButton {
				border: none;
				background: transparent;
				cursor: pointer;
				color: var(--primary-color);
				font-size: 14px;
			}

			#copyIdButton:hover {
				color: #0056b3;
			}

			/* Chat box styles */
			.messages-box {
				flex-grow: 1;
				height: 400px; /* Điều chỉnh chiều cao để lấp đầy */
				overflow-y: auto;
				border: 1px solid #ddd;
				border-radius: 8px;
				padding: 10px;
				margin-bottom: 10px;
				display: flex;
				flex-direction: column;
				gap: 8px;
			}

			.message {
				padding: 8px 12px;
				border-radius: 18px;
				max-width: 80%;
				word-wrap: break-word;
			}

			.my-message {
				align-self: flex-end;
				background-color: var(--primary-color);
				color: white;
			}

			.other-message {
				align-self: flex-start;
				background-color: #e4e6eb;
				color: var(--text-color);
			}

			.chat-input {
				display: flex;
				gap: 10px;
			}

			#messageInput {
				flex-grow: 1;
				padding: 10px 15px;
				border: 1px solid #ccc;
				border-radius: 30px;
			}

			.btn-send {
				background: var(--primary-color);
				color: white;
				border: none;
				border-radius: 50%;
				width: 40px;
				height: 40px;
				font-size: 16px;
				cursor: pointer;
			}
			
			video {
				width: 100%;
				height: 100%;
				background: #000;
				border-radius: 12px;
				object-fit: cover;
				box-shadow: 0 4px 12px rgba(0,0,0,0.3);
			}

			/* Responsive */
			@media (max-width: 768px) {
				.main-layout {
					flex-direction: column;
				}
			}
		</style>

		<div class="app-container"> 
			<div class="id-info">
				<p>
				
					ID của bạn: <span id="my-id">Đang tải...</span>
					<button id="copyIdButton" title="Sao chép ID"><i class="fas fa-copy"></i></button>
				</p>
				<p id="status">Đang kiểm tra...</p>
				<p>Thời gian: <span id="timer">00:00</span></p>
			</div>
			<div class="main-layout">
				<div class="video-section">
					<div class="video-container">
						<div class="video-wrapper">
							<video id="reVideo" autoplay></video>
							<div class="remote-status">
								<i id="remoteCamStatus" class="fas fa-video"></i>
								<i id="remoteMicStatus" class="fas fa-microphone"></i>
							</div>
							<span class="video-label">Đối tác</span>
							<div class="local-video-in-corner">
								<video id="loVideo" autoplay muted></video>
								<span class="video-label">Bạn</span>
							</div>
						</div>
					</div>
					<div class="controls">
						<input type="text" id="peerIdInput" placeholder="Nhập ID người gọi">
						<button class="btn-call" id="callButton"><i class="fas fa-phone"></i></button>
						<button class="btn-toggle" id="toggleCamButton"><i class="fas fa-video"></i></button>
						<button class="btn-toggle" id="toggleMicButton"><i class="fas fa-microphone"></i></button>
						<button class="btn-end" id="endCallButton"><i class="fas fa-phone-slash"></i></button>
					</div>
				</div>
				<div class="chat-section">
					<div id="messages" class="messages-box"></div>
					<div class="chat-input">
						<input type="text" id="messageInput" placeholder="Nhập tin nhắn...">
						<button id="sendMessageButton" class="btn-send"><i class="fas fa-paper-plane"></i></button>
					</div>
				</div>
			</div>
		</div>
		<div id="incomingCallPopup">
			<img id="callerAvatar" src="https://pbs.twimg.com/media/FoUoGo3XsAMEPFr?format=jpg&name=4096x4096" alt="Avatar" />
			<h2 id="callerIdText">Cuộc gọi đến...</h2>
			<button id="acceptCallButton">Chấp nhận</button>
			<button id="rejectCallButton">Từ chối</button>
		</div>
		<audio id="ringtone" src="https://actions.google.com/sounds/v1/alarms/mechanical_clock_ring.ogg" loop></audio>
		<script>
/* ============================
   CONFIG & USER INFO
   ============================ */
console.log($.localVal('$USERINFO'));
let myCustomId = String($.localVal('$USERINFO').Items[1] || '');
let userName = String($.localVal('$USERINFO').Items[7] || 'Người dùng');
if (!myCustomId) console.warn('WARNING: chưa có Items[1] để làm PeerID');

const CALL_TIMEOUT_DURATION = 20000; // ms

/* ============================
   DOM ELEMENTS
   ============================ */
const localVideo = document.getElementById('loVideo');
const remoteVideo = document.getElementById('reVideo');
const callButton = document.getElementById('callButton');
const peerIdInput = document.getElementById('peerIdInput');
const myIdElement = document.getElementById('my-id');
const statusElement = document.getElementById('status');
const toggleCamButton = document.getElementById('toggleCamButton');
const toggleMicButton = document.getElementById('toggleMicButton');
const endCallButton = document.getElementById('endCallButton');
const timerElement = document.getElementById('timer');
const videoContainer = document.querySelector('.video-container');
const remoteCamStatus = document.getElementById('remoteCamStatus');
const remoteMicStatus = document.getElementById('remoteMicStatus');

const incomingCallPopup = document.getElementById('incomingCallPopup');
const callerIdText = document.getElementById('callerIdText');
const acceptCallButton = document.getElementById('acceptCallButton');
const rejectCallButton = document.getElementById('rejectCallButton');
const ringtone = document.getElementById('ringtone');

const messagesBox = document.getElementById('messages');
const messageInput = document.getElementById('messageInput');
const sendMessageButton = document.getElementById('sendMessageButton');
const copyIdButton = document.getElementById('copyIdButton');

/* ============================
   STATE
   ============================ */
let localStream = null;
let currentCall = null;
let incomingCall = null;
let currentDataConnection = null;
let callInterval = null;
let timerSeconds = 0;
let callTimeout = null;

/* ============================
   INIT PEER
   ============================ */
let peer = createPeer(myCustomId);

function createPeer(id) {
    try {
        const p = new Peer(id, { debug: 2 });
        p.on('open', onPeerOpen);
        p.on('error', onPeerError);
        p.on('call', onPeerCall);
        p.on('connection', onPeerConnection);
        return p;
    } catch (e) {
        console.error('Peer creation failed', e);
        alert('Không thể khởi tạo PeerJS: ' + e);
    }
}

/* ============================
   PEER EVENT HANDLERS
   ============================ */
function onPeerOpen(id) {
    myIdElement.textContent = id;
    statusElement.textContent = 'Sẵn sàng gọi hoặc nhận cuộc gọi';
    console.log('Peer open id=', id);
}

function onPeerError(err) {
    console.error('Peer error', err);
    try {
        const msg = String(err && (err.type || err.message || ''));
        if (msg.toLowerCase().includes('unavailable') || msg.toLowerCase().includes('taken') || msg.toLowerCase().includes('in use')) {
            const suffix = '_' + Math.floor(Math.random() * 10000);
            myCustomId = (myCustomId || 'peer') + suffix;
            console.warn('PeerID bị trùng — chuyển sang:', myCustomId);
            peer.destroy && peer.destroy();
            peer = createPeer(myCustomId);
        } else {
            statusElement.textContent = 'Lỗi PeerJS: ' + (err && (err.message || err.type || err));
        }
    } catch (e) {
        console.error(e);
    }
}

/* ============================
   GET MEDIA
   ============================ */
async function getMedia() {
    try {
        localStream = await navigator.mediaDevices.getUserMedia({ video: true, audio: true });
        localVideo.srcObject = localStream;
        localVideo.play().catch(() => {});
        statusElement.textContent = 'Camera và micro đang hoạt động';
    } catch (err) {
        console.warn('Không lấy được video, thử audio-only', err);
        try {
            localStream = await navigator.mediaDevices.getUserMedia({ video: false, audio: true });
            localVideo.style.display = 'none';
            statusElement.textContent = 'Chỉ sử dụng micro';
        } catch (e) {
            alert('Không thể truy cập microphone/camera. Vui lòng cho phép quyền.');
        }
    }
}
getMedia();

/* ============================
   HELPERS: DataConnection management
   ============================ */
function ensureDataConnection(peerId, onReady) {
    // nếu đã có data connection tới cùng peer => gọi callback
    if (currentDataConnection && currentDataConnection.open && currentDataConnection.peer === peerId) {
        return onReady && onReady(currentDataConnection);
    }

    // đóng connection cũ (khác peer)
    if (currentDataConnection && currentDataConnection.peer !== peerId) {
        try { currentDataConnection.close(); } catch (e) {}
        currentDataConnection = null;
    }

    // tạo mới
    try {
        const conn = peer.connect(peerId);
        currentDataConnection = conn;
        conn.on('open', () => {
            // khi bên kia yêu cầu username, trả lời; đồng thời gửi username mặc định của mình
            try { conn.send('username:' + userName); } catch (e) {}
            onReady && onReady(conn);
        });
        conn.on('data', data => {
            // Nếu bên kia yêu cầu tên, đáp lại
            if (typeof data === 'string' && data === 'username_request') {
                try { conn.send('username:' + userName); } catch (e) {}
                return;
            }
            // Bình thường xử lý data
            handleIncomingData(String(data));
            // xử lý username riêng (cập nhật popup nếu đang hiện)
            if (typeof data === 'string' && data.startsWith('username:')) {
                const remoteName = data.substring(9);
                if (incomingCallPopup.style.display === 'block') {
                    callerIdText.textContent = 'Cuộc gọi từ: ' + remoteName;
                }
            }
        });
        conn.on('close', () => {
            if (currentDataConnection === conn) currentDataConnection = null;
        });
    } catch (e) {
        console.warn('Không thể tạo data connection', e);
    }
}

/* ============================
   CALL / CONNECTION HANDLERS
   ============================ */

// Khi có cuộc gọi đến
function onPeerCall(call) {
    if (currentCall) {
        call.close(); // bận
        const conn = peer.connect(call.peer);
        conn.on('open', () => conn.send('busy'));
        return;
    }

    incomingCall = call;

    // nếu caller gửi metadata.username -> hiển thị ngay
    const remoteFromMetadata = call.metadata && call.metadata.username;
    if (remoteFromMetadata) {
        callerIdText.textContent = 'Cuộc gọi từ: ' + remoteFromMetadata;
    } else {
        // tạm hiển thị ... rồi cố gắng tạo data channel để lấy username
        callerIdText.textContent = 'Cuộc gọi từ: ...';
        // tạo data connection (yêu cầu gửi username nếu bên gọi chưa gửi)
        try {
            ensureDataConnection(call.peer, (conn) => {
                // yêu cầu username nếu chưa gửi
                try { conn.send('username_request'); } catch (e) {}
            });
        } catch (e) {
            console.warn('Không lấy được username qua data channel', e);
        }
    }

    incomingCallPopup.style.display = 'block';
    ringtone.play();

    // Nếu đối phương đóng call trước khi bạn bấm Chấp nhận
    incomingCall.on('close', () => {
        if (incomingCallPopup.style.display === 'block') {
            incomingCallPopup.style.display = 'none';
            statusElement.textContent = 'Cuộc gọi nhỡ từ ' + (call.peer || '');
            ringtone.pause(); ringtone.currentTime = 0;
            incomingCall = null;
        }
    });

    incomingCall.on('error', (err) => {
        console.warn('Incoming call error', err);
    });
}

// Khi có data connection tới (đối phương kết nối data)
function onPeerConnection(conn) {
    console.log('Data connection from', conn.peer);
    // Nếu đã có kết nối data khác, đóng (hoặc thay thế)
    if (currentDataConnection && currentDataConnection.peer !== conn.peer) {
        try { currentDataConnection.close(); } catch(e) {}
    }
    currentDataConnection = conn;

    currentDataConnection.on('open', () => {
        console.log('Data channel open with', conn.peer);
        // gửi tên của mình để đối phương hiển thị tên
        try { currentDataConnection.send('username:' + userName); } catch (e) {}
        // gửi trạng thái cam/mic hiện tại
        const videoTrack = localStream?.getVideoTracks()[0];
        const audioTrack = localStream?.getAudioTracks()[0];
        if (videoTrack) currentDataConnection.send(videoTrack.enabled ? 'video-on' : 'video-off');
        if (audioTrack) currentDataConnection.send(audioTrack.enabled ? 'audio-on' : 'audio-off');
    });

    currentDataConnection.on('data', data => {
        // xử lý username đặc biệt trước
        if (typeof data === 'string' && data.startsWith('username:')) {
            const remoteName = data.substring(9);
            if (incomingCallPopup.style.display === 'block') {
                callerIdText.textContent = 'Cuộc gọi từ: ' + remoteName;
            } else {
                // cập nhật trạng thái hiển thị tên khi đang trong call
                statusElement.textContent = 'Đang trong cuộc gọi với: ' + remoteName;
            }
            return;
        }
        // nếu bên kia hỏi username thì trả lời
        if (typeof data === 'string' && data === 'username_request') {
            try { currentDataConnection.send('username:' + userName); } catch (e) {}
            return;
        }
        // các data khác (chat, trạng thái)
        handleIncomingData(String(data));
    });

    currentDataConnection.on('close', () => {
        console.log('Data connection closed with', conn.peer);
        if (currentDataConnection === conn) currentDataConnection = null;
    });
}

/* ============================
   UI ACTIONS: GỌI ĐI / CHẤP NHẬN / TỪ CHỐI
   ============================ */

// Gọi đi
callButton.addEventListener('click', () => {
    const remotePeerId = peerIdInput.value.trim();
    if (!remotePeerId) return alert('Nhập ID đối phương');
    statusElement.textContent = 'Đang gọi ' + remotePeerId + '...';

    // tạo data connection trước để trao đổi username & trạng thái
    ensureDataConnection(remotePeerId, (conn) => {
        // gửi username ngay khi mở
        try { conn.send('username:' + userName); } catch (e) {}
        const videoTrack = localStream?.getVideoTracks()[0];
        const audioTrack = localStream?.getAudioTracks()[0];
        if (videoTrack) try { conn.send(videoTrack.enabled ? 'video-on' : 'video-off'); } catch(e){}
        if (audioTrack) try { conn.send(audioTrack.enabled ? 'audio-on' : 'audio-off'); } catch(e){}
    });

    // gọi audio/video — kèm metadata username để bên nhận có thể hiển thị ngay
    try {
        currentCall = peer.call(remotePeerId, localStream, { metadata: { username: userName } });
    } catch (e) {
        console.error('Call error', e);
        statusElement.textContent = 'Lỗi khi gọi: ' + e;
        return;
    }

    // timeout nếu không trả lời
    callTimeout = setTimeout(() => {
        if (currentCall && !currentCall.open) {
            try { currentDataConnection?.send('no-answer'); } catch (e) {}
            try { currentCall.close(); } catch(e) {}
            statusElement.textContent = 'Không có trả lời từ ' + remotePeerId;
            currentCall = null;
        }
    }, CALL_TIMEOUT_DURATION);

    setupCallHandlers(currentCall);
});

// Chấp nhận cuộc gọi
acceptCallButton.addEventListener('click', () => {
    if (!incomingCall) return;
    try {
        incomingCall.answer(localStream);
    } catch (e) {
        console.error('Answer error', e);
    }
    setupCallHandlers(incomingCall);

    // nếu chưa có data connection, cố gắng tạo kết nối data tới peer gọi đến
    try {
        if (!currentDataConnection || currentDataConnection.peer !== incomingCall.peer) {
            ensureDataConnection(incomingCall.peer, () => {});
        }
    } catch (e) {
        console.warn('Không thể tạo data connection khi accept', e);
    }

    incomingCallPopup.style.display = 'none';
    ringtone.pause(); ringtone.currentTime = 0;
    incomingCall = null;
});

// Từ chối cuộc gọi
rejectCallButton.addEventListener('click', () => {
    if (incomingCall) {
        const conn = peer.connect(incomingCall.peer);
        conn.on('open', () => conn.send('rejected'));
        try { incomingCall.close(); } catch(e) {}
    }
    incomingCallPopup.style.display = 'none';
    ringtone.pause(); ringtone.currentTime = 0;
    statusElement.textContent = 'Cuộc gọi bị từ chối';
    incomingCall = null;
});

/* ============================
   CALL HANDLERS (stream/close)
   ============================ */
function setupCallHandlers(call) {
    if (!call) return;
    // gán currentCall
    currentCall = call;

    call.on('stream', remoteStream => {
        clearTimeout(callTimeout);
        remoteVideo.srcObject = remoteStream;
        remoteVideo.play().catch(()=>{});
        startTimer();
        videoContainer.classList.add('call-active');
        statusElement.textContent = 'Đang trong cuộc gọi với: ' + (call.peer || '');
    });

    call.on('close', () => {
        remoteVideo.srcObject = null;
        stopTimer();
        clearTimeout(callTimeout);
        videoContainer.classList.remove('call-active');
        statusElement.textContent = 'Cuộc gọi đã kết thúc';
        // đóng data connection nếu là cùng peer
        try {
            if (currentDataConnection && currentDataConnection.peer === call.peer) {
                currentDataConnection.close();
            }
        } catch (e) {}
        currentCall = null;
        // reset trạng thái icons
        remoteCamStatus.className = 'fas fa-video';
        remoteMicStatus.className = 'fas fa-microphone';
        messagesBox.innerHTML = '';
    });

    call.on('error', err => {
        console.error('Call error', err);
        statusElement.textContent = 'Lỗi cuộc gọi: ' + (err && (err.message || err));
    });
}

/* ============================
   DATA HANDLING (chat + trạng thái)
   ============================ */
function handleIncomingData(data) {
    if (!data) return;
    // chat
    if (data.startsWith('chat:')) {
        const message = data.substring(5);
        addMessageToChat('Đối tác: ' + message, false);
        return;
    }
    switch (data) {
        case 'ended':
            try { currentCall?.close(); } catch(e){}
            statusElement.textContent = 'Cuộc gọi đã kết thúc (đối phương gửi ended)';
            break;
        case 'rejected':
            try { currentCall?.close(); } catch(e){}
            statusElement.textContent = 'Người dùng đã từ chối cuộc gọi';
            break;
        case 'busy':
            try { currentCall?.close(); } catch(e){}
            statusElement.textContent = 'Người dùng đang bận';
            break;
        case 'no-answer':
            if (incomingCallPopup.style.display === 'block') {
                incomingCallPopup.style.display = 'none';
                statusElement.textContent = 'Bạn vừa có cuộc gọi nhỡ';
                ringtone.pause(); ringtone.currentTime = 0;
            }
            try { currentCall?.close(); } catch(e){}
            break;
        case 'tab-closed':
            try { currentCall?.close(); } catch(e){}
            statusElement.textContent = 'Cuộc gọi đã kết thúc do tab của đối phương đóng';
            break;
        case 'video-on':
            remoteCamStatus.className = 'fas fa-video';
            break;
        case 'video-off':
            remoteCamStatus.className = 'fas fa-video-slash disabled';
            break;
        case 'audio-on':
            remoteMicStatus.className = 'fas fa-microphone';
            break;
        case 'audio-off':
            remoteMicStatus.className = 'fas fa-microphone-slash disabled';
            break;
        default:
            console.log('Data nhận:', data);
    }
}

/* ============================
   TOGGLE CAM / MIC / END CALL
   ============================ */
toggleCamButton.addEventListener('click', () => {
    const track = localStream?.getVideoTracks()[0];
    if (!track) return;
    track.enabled = !track.enabled;
    const status = track.enabled ? 'video-on' : 'video-off';
    try { currentDataConnection?.send(status); } catch(e){}
    toggleCamButton.innerHTML = track.enabled ? '<i class="fas fa-video"></i>' : '<i class="fas fa-video-slash"></i>';
});

toggleMicButton.addEventListener('click', () => {
    const track = localStream?.getAudioTracks()[0];
    if (!track) return;
    track.enabled = !track.enabled;
    const status = track.enabled ? 'audio-on' : 'audio-off';
    try { currentDataConnection?.send(status); } catch(e){}
    toggleMicButton.innerHTML = track.enabled ? '<i class="fas fa-microphone"></i>' : '<i class="fas fa-microphone-slash"></i>';
});

endCallButton.addEventListener('click', () => {
    if (currentCall) {
        try { currentDataConnection?.send('ended'); } catch(e){}
        try { currentCall.close(); } catch(e){}
        // đóng data connection nếu là cùng peer
        try {
            if (currentDataConnection && currentDataConnection.peer === currentCall.peer) {
                currentDataConnection.close();
            }
        } catch (e) {}
        remoteVideo.srcObject = null;
        stopTimer();
        videoContainer.classList.remove('call-active');
        statusElement.textContent = 'Cuộc gọi đã kết thúc';
    }
});

/* ============================
   TIMER
   ============================ */
function formatTime(sec) {
    return String(Math.floor(sec / 60)).padStart(2, '0') + ':' + String(sec % 60).padStart(2, '0');
}

function startTimer() {
    timerSeconds = 0;
    timerElement.textContent = formatTime(0);
    clearInterval(callInterval);
    callInterval = setInterval(() => {
        timerSeconds++;
        timerElement.textContent = formatTime(timerSeconds);
    }, 1000);
}

function stopTimer() {
    clearInterval(callInterval);
}

/* ============================
   CHAT
   ============================ */
function addMessageToChat(message, isMine) {
    const msgDiv = document.createElement('div');
    msgDiv.textContent = message;
    msgDiv.classList.add('message');
    if (isMine) msgDiv.classList.add('my-message'); else msgDiv.classList.add('other-message');
    messagesBox.appendChild(msgDiv);
    messagesBox.scrollTop = messagesBox.scrollHeight;
    // disable send nếu chưa có data connection
    sendMessageButton.disabled = !(currentDataConnection && currentDataConnection.open);
}

sendMessageButton.addEventListener('click', () => {
    const message = messageInput.value.trim();
    if (!message) return;
    if (currentDataConnection && currentDataConnection.open) {
        try { currentDataConnection.send('chat:' + message); } catch(e){}
        addMessageToChat('Bạn: ' + message, true);
        messageInput.value = '';
    } else {
        alert('Chưa kết nối data với đối phương');
    }
});

messageInput.addEventListener('keypress', (e) => {
    if (e.key === 'Enter') sendMessageButton.click();
});

/* ============================
   COPY ID BUTTON
   ============================ */
copyIdButton.addEventListener('click', () => {
    const id = myIdElement.textContent || myCustomId || '';
    if (!id) return;
    navigator.clipboard.writeText(id).then(() => {
        statusElement.textContent = 'Đã sao chép ID vào clipboard!';
        setTimeout(() => statusElement.textContent = 'Sẵn sàng gọi hoặc nhận cuộc gọi', 2000);
    }).catch(err => console.error('Clipboard error', err));
});

/* ============================
   CLEANUP BEFORE UNLOAD
   ============================ */
window.addEventListener('beforeunload', () => {
    try { currentDataConnection?.send('tab-closed'); } catch (e) {}
    try {
        currentDataConnection && currentDataConnection.close && currentDataConnection.close();
    } catch(e){}
    try { currentCall?.close(); } catch (e) {}
    try { peer && peer.destroy && peer.destroy(); } catch (e) {}
});

/* ============================
   END OF SCRIPT
   ============================ */
</script>
	</div>
</asp:Content>
