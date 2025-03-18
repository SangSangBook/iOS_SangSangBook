//npm init -y
//npm install express body-parser cors  -- 라이브러리 설치 후 테스트 하기.

const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const PORT = process.env.PORT || 3000;

// 미들웨어 설정
app.use(cors()); // CORS 활성화 (Swift 앱에서 접근 가능하도록)
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// 테스트용
const users = [
  {
    id: 1,
    email: 'test',
    password: '1234'
  }
];

app.get('/', (req, res) => {
  res.send('서버가 정상적으로 실행 중.');
});

app.get('/api', (req, res) => {
  res.send('API 엔드포인트가 정상적으로 실행 중.');
});

// 로그인 라우트
app.post('/api/login', (req, res) => {
  try {
    const { email, password } = req.body;
    
    console.log('로그인 시도:', email, password); // 디버깅용 로그
    
    // 사용자 찾기
    const user = users.find(user => user.email === email && user.password === password);
    if (!user) {
      console.log('로그인 실패: 사용자 정보가 일치하지 않습니다.');
      return res.status(401).json({ 
        success: false, 
        message: '아이디 또는 비밀번호가 틀렸습니다.' 
      });
    }
    
    // 로그인 성공
    console.log('로그인 성공:', user.email);
    res.status(200).json({
      success: true,
      message: '로그인에 성공하였습니다.',
      user: {
        id: user.id,
        email: user.email
      }
    });
  } catch (error) {
    console.error('로그인 오류:', error);
    res.status(500).json({ 
      success: false, 
      message: '서버 오류가 발생했습니다.' 
    });
  }
});

// 사용자 정보 가져오기
app.get('/api/user/:id', (req, res) => {
  const userId = parseInt(req.params.id);
  const user = users.find(u => u.id === userId);
  
  if (!user) {
    return res.status(404).json({ 
      success: false, 
      message: '사용자를 찾을 수 없습니다.' 
    });
  }
  
  res.status(200).json({
    success: true,
    user: {
      id: user.id,
      email: user.email
    }
  });
});

// 서버 시작
app.listen(PORT, () => {
  console.log(`서버가 포트 ${PORT}에서 실행 중입니다.`);
  console.log(`서버 테스트: http://localhost:${PORT}`);
  console.log(`API 테스트: http://localhost:${PORT}/api`);
  console.log(`로그인 테스트: POST http://localhost:${PORT}/api/login (JSON: {"email": "test", "password": "1234"})`);
});

/*
추후 비밀번호 암호화 (bcrypt)
    JWT 인증 토큰 구현
*/