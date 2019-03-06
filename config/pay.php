<?php

return [
    'alipay' => [
        'app_id'         => '2016092500595181',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApX8+LeVCpAEwLEQCzTwfpujNJT2w6RUqb7dDJde8X5SEWuFBODyFsrNSMzgLafuojiWBdtEDhF9xU+OZoIW7Wqdwu7t7YAnBiitsWAEWVZaGbACAfdJXgyB9jD1OwES1aT1Hp+cRE1FrYtZf9wpvo5/Tcv5L4RZLl/jK2cARk6oGIUTI+akrbS3zUGo/DVeolwPGTATLXVjoINIkQst1hmwTPnfrha+/T3okY/9ORVyFxLDqKzXG01EV0H7+KAIxNT3hFEywYtknht/JyjZCG9eptutdz/NCnecKh+gdzQpnP/Tkg0JKsKDFljrgJojd3V7ornI71ZfE6FXG2tgAeQIDAQAB',
        'private_key'    => 'MIIEowIBAAKCAQEA0Eq4G1SnUSMq4lOaXKwdwJxfYf3eK1esh+hQ3cBSJoZb8dTZaPi1FVg8zhkENNFEmPQ3fPke6mgLUVF43jkpY2sc+DR9tJfiUtcqSYIrBOO0wqLZ9Qr2pYThgeaSfjRuJPnNxD/b2KUlULuYa2Ci8eSoQVgsJBgkS59OmB98SM/DFMwo/5eoZxjkDwbitpfoqmN3INCjb2mDAPgB4SLxR0K4mYT84BO01CHK1ru6UovtxFyeoXR0TCe8oIAmh9iuN8lOkHGjwT90M00aqAHepIT9mPtNXIx/r6bpvf+ixNtRoUNQ3pVy/nPUn7JxcXFpLRrWcCK8SwB3RGH/BD2xeQIDAQABAoIBACj0aBrHnFZxyb7SnWlXVkpG9OI5nnN7O6tFXJEdfYmhpXZ5WX4wWLqnrN0BQjh4ZTqF2lsySIfiiUcl89QN/TtVFk8fUxAtRQzwzZnChF7jvuj+SEjMLQ8Cf6yg/3DdMkMG8xSBUeLZJesn16JVT/Sr9wFSKuu1630LB9MVbcSK6lXP4ZvTiPOEp8he74jyPnvc4nboE0ttRM3Q/35Gaiwb1FYQQoRHv6T3+PCNa8uWaGwvlJLzptJOELP+iG3xuBKaKkSy/Jg27EE5eJz5l8NVMkAL8bVuUK+70M6S1NiQpzjnMhlaJz9dNre99QfYihfA0AlMCQdtJm2nu7Xg5wECgYEA9zQXRutetLEfrJYzk+A6DHzpQgQI3EiHtMCYEYAsbqRiOGWSedPgEdq+U20khUpWnY2sPRCHGxvK8z+VQF2yHYjfarPf9wec5arK90WbqRicmdxQxxlB7EUrEUMOEv6ed5qr6MuxiF+VG7/KW55hSP7H0VNBq10uHsWYpXq8EJECgYEA17QpWih2roPCPXOG0t9j81cCzZyrmmwgJGkvPW+BzjK15evwbyugEdCrduzciM8bmxk/KqT843X1Bgy9Ceo3nD07kF2Ef1N9rNi8HKketvp3PPj6HVceHLt9ThUTREsnmUULIQUtaSPjF1dAUSZaHB9TsxoEV7RI30shXvz/hmkCgYABb+cWvXWOfV0exrzEBlCwE+XTQWy/wxgu39PCfklD12bOxyBj3ux1jhz/JSpKMBVy0wkGTdtLOA0k/uCiQCkx7MLHvwX1TLEH0MdfSqNOB1uZtWMu1SHB+uD2N7qUN7C6J0cKkmyUy2F1iNbnU3NjVj/ZIq/GDEOhYCq0A5OmUQKBgHmcfHf1OjxX0qo8uPWotrxaAR2VR/aPIWwF1XlopaFwW7deVzcGPH/uys0I66lCQwklqcRMMru3JEad5fJyF5pBt5RD9VCn7MIHi78I5mU5PwKkSLdEB5khZ5sfLLajPJcgIw8h0SFm90CQk5Vs7v7N9q2SbIJaBX/G5vCb6SCJAoGBAMS3P9QjOIcdMzQ4ITJmhN4giYalyXGnZFLYOIilsEcrCyDOoFtGwSBTOc/P5SpSYCTYreiveKlhEUEkpvDySzelJgBtpXtO7eed7JbFvlq829pondruQ8cggag5EO7Tr8XdpBPWH0G5Kp4c/+/ttPTYh7d2KOSA2QDemaid/wAo',
        'log'            => [
            'file' => storage_path('logs/alipay.log'),
        ],
    ],

    'wechat' => [
        'app_id'      => '',
        'mch_id'      => '',
        'key'         => '',
        'cert_client' => '',
        'cert_key'    => '',
        'log'         => [
            'file' => storage_path('logs/wechat_pay.log'),
        ],
    ],
];
