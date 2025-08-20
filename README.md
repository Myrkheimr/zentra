# Zentra

**A distributed, self-hosted file system management application built with Flutter and Zig**

Zentra provides seamless access to multiple server file systems through a unified, cross-platform interface. Manage your distributed infrastructure with real-time file operations, intuitive browsing, and complete self-hosted control.

## 🚀 Features

### Core Functionality
- **Multi-node architecture** - Connect to multiple independent server nodes
- **Real-time file operations** - Browse, create, read, update, and delete files instantly
- **Cross-platform support** - Runs on mobile, desktop, and web platforms
- **WebSocket communication** - Low-latency, real-time server connections
- **Self-hosted control** - Complete ownership of your data and infrastructure

### File Management
- **Intuitive file browser** - Navigate directory structures with ease
- **CRUD operations** - Full file and directory management capabilities
- **Real-time updates** - Immediate reflection of file system changes

### Session Management
- **Dynamic node switching** - Switch between different servers seamlessly
- **Session-based access** - Secure, authenticated connections to each node
- **Connection monitoring** - Real-time health and status monitoring

## 🏗️ Architecture

### Frontend (Flutter)
- Cross-platform UI built with Flutter
- Responsive design for mobile, desktop, and web
- Real-time WebSocket client implementation

### Node (Zig)
- High-performance WebSocket servers deployed per node
- Native file system operations with memory safety
- Minimal runtime overhead for optimal performance
- Concurrent connection handling

## 📋 Prerequisites

### Development Requirements
- **Flutter SDK** (>= 3.35.1)
- **Zig** (>= 0.15.0)
- **Git** for version control

### Runtime Requirements
- **Server nodes**: Linux/Windows/macOS systems for hosting Zig backend
- **Client devices**: Any platform supported by Flutter

## 🛠️ Installation

### Clone the Repository
git clone https://github.com/Myrkheimr/zentra.git
cd zentra

### Frontend Setup
cd frontend
flutter pub get
flutter run

### Node Setup
cd node
zig build
./zig-out/bin/znode --port 8080 --root /path/to/serve

## 🚀 Quick Start

### 1. Deploying a Node
./znode --port 8080 --root /var/www --name "Production"

### 2. Launch Frontend
cd frontend
flutter run

### 3. Connect to Nodes
1. Open Zentra application
2. Add your node
3. Authenticate with your credentials (If you have enabled Authentication)
4. Start managing files across your infrastructure

## 🧪 Development

### Running Tests
#### Frontend tests

cd frontend
flutter test

#### Node tests

cd node
zig test src/main.zig

### Building for Production
#### Frontend build

flutter build web
flutter build apk --release

#### Node build

zig build -Doptimize=ReleaseFast

## 🗺️ Roadmap

### - Initial Release
- [ ] Basic file browser interface
- [ ] CRUD operations for files and directories
- [ ] Single-node session management
- [ ] WebSocket communication protocol
- [ ] Authentication and security
- [ ] Error handling and recovery

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

### Development Setup
1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Make your changes and test thoroughly
4. Commit your changes: `git commit -m 'Add amazing feature'`
5. Push to the branch: `git push origin feature/amazing-feature`
6. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/Myrkheimr/zentra/blob/main/LICENSE) file for details.

## 🙏 Acknowledgments

- Flutter team for the excellent cross-platform framework
- Zig community for the powerful systems programming language
- Contributors and users who help make Zentra better

## 📞 Support

- **Documentation**: [Wiki](https://github.com/Myrkheimr/zentra/wiki)
- **Issues**: [GitHub Issues](https://github.com/Myrkheimr/zentra/issues)
- **Discussions**: [GitHub Discussions](https://github.com/Myrkheimr/zentra/discussions)