# mineru_playground

# How to put mineru caches? 

```bash
brew install python@3.11 uv

uv venv --python 3.11

source .venv/bin/activate

uv pip install "mineru[all]==3.4.0"

# mineru-models-download -s huggingface -m pipeline

mkdir -p mineru-data/hf-cache
export HF_HOME="$PWD/mineru-data/hf-cache"
export MINERU_TOOLS_CONFIG_JSON="$PWD/mineru-data/mineru.json"

mineru-models-download \
  -s huggingface \
  -m all

mineru-models-download -s huggingface -m all
```

# Download Structure: 

```bash
.
├── hf-cache
│   ├── hub
│   │   ├── models--opendatalab--MinerU2.5-Pro-2605-1.2B
│   │   │   ├── blobs
│   │   │   │   ├── 0bedcd9f2b28e6e57d783dd088c69289753e17f5
│   │   │   │   ├── 0fd0c936289431166eb3794fe46578222c55f120
│   │   │   │   ├── 31349551d90c7606f325fe0f11bbb8bd5fa0d7c7
│   │   │   │   ├── 3446fd17813474e7b8350844f7bf422b51b28f40
│   │   │   │   ├── 3973ad8ffb828cdd565625b5c0edd8b53d3779bd
│   │   │   │   ├── 4783fe10ac3adce15ac8f358ef5462739852c569
│   │   │   │   ├── 52373fe24473b1aa44333d318f578ae6bf04b49b
│   │   │   │   ├── 6c226632394ae7474b0d4b13e15793eac2e21ee9
│   │   │   │   ├── abf8681ca63b8dec7b67de257af47b821f179442f72998d0696ae2ed9232a5f0
│   │   │   │   ├── b4600696ae5bcd5e37d51fbb70a631c739c87c87
│   │   │   │   ├── c6bf7cfa93d56adb832bef501f1e32aae541f20a
│   │   │   │   ├── d9604a3ba04db43dc4aa59d1429d2bc7744a7ffb
│   │   │   │   └── dceac5fc54a795ee7570d17902b47bd05412dc2afa62bdf325c3f97fcb5b87fe
│   │   │   ├── refs
│   │   │   │   └── main
│   │   │   └── snapshots
│   │   │       └── bff20d4ae2bf202df9f45284b4d43681555a97ed
│   │   │           ├── added_tokens.json -> ../../blobs/d9604a3ba04db43dc4aa59d1429d2bc7744a7ffb
│   │   │           ├── chat_template.jinja -> ../../blobs/6c226632394ae7474b0d4b13e15793eac2e21ee9
│   │   │           ├── config.json -> ../../blobs/c6bf7cfa93d56adb832bef501f1e32aae541f20a
│   │   │           ├── generation_config.json -> ../../blobs/0fd0c936289431166eb3794fe46578222c55f120
│   │   │           ├── merges.txt -> ../../blobs/31349551d90c7606f325fe0f11bbb8bd5fa0d7c7
│   │   │           ├── model.safetensors -> ../../blobs/abf8681ca63b8dec7b67de257af47b821f179442f72998d0696ae2ed9232a5f0
│   │   │           ├── preprocessor_config.json -> ../../blobs/3973ad8ffb828cdd565625b5c0edd8b53d3779bd
│   │   │           ├── README.md -> ../../blobs/b4600696ae5bcd5e37d51fbb70a631c739c87c87
│   │   │           ├── special_tokens_map.json -> ../../blobs/3446fd17813474e7b8350844f7bf422b51b28f40
│   │   │           ├── tokenizer_config.json -> ../../blobs/0bedcd9f2b28e6e57d783dd088c69289753e17f5
│   │   │           ├── tokenizer.json -> ../../blobs/dceac5fc54a795ee7570d17902b47bd05412dc2afa62bdf325c3f97fcb5b87fe
│   │   │           └── vocab.json -> ../../blobs/4783fe10ac3adce15ac8f358ef5462739852c569
│   │   └── models--opendatalab--PDF-Extract-Kit-1.0
│   │       ├── blobs
│   │       │   ├── 018a339659fba42e55f0e30df0af9ab61e7909eb
│   │       │   ├── 034efee70ef56d8ab7cf3b9b945865cdaf22461ad03b0f6e68bf9234f167f035
│   │       │   ├── 05eb1c89030b269b830ba7f2d424a4ac80c7593ea1795fef9777fedbc18e383f
│   │       │   ├── 0ea48d3a17e35ef5c2e498a5e799566073234d39b1079ca21d9f4fafe73c6d20
│   │       │   ├── 259a277836bf0e094910949ef4635927ad3f82c20b37f4010749af968967e282
│   │       │   ├── 283d716bdd93d011edca4563d218a767b273c47bf9c32cb3e8a0baf5b12c8242
│   │       │   ├── 2ae0a5e1e8151105eb864c4784a8a435821dd1aeddcd4c3018041b0aa897add0
│   │       │   ├── 2c0c9f5180ae3e4d8ea9d3830116ac49900abbb2af3985db02c2bbf484bb0bf9
│   │       │   ├── 2ed368d4d02a6733d0be2b982b8ed2d205603c0395e6c4994158527dca637644
│   │       │   ├── 405b72b79a652a87c49d92700d5677e82375c5f6e242b6f54e5faf2264f8aeb5
│   │       │   ├── 4767ddc90c1532ec01d881a980dae0a0b92679f4f82f88c4e9f92563de69e740
│   │       │   ├── 4a537f8aa90afb4f3bb63d0950c2d408b18d586509956b4f56652ef0829764f3
│   │       │   ├── 577d0530f55e3856064fb31e8bcd3ca4714151bacd93696a1f8dda9c06e4bdb3
│   │       │   ├── 5f43c16f2a684b1d2284662178bdb604febd3d6bfdb5ca73828d08d0f7c0c3e9
│   │       │   ├── 69eb4ce12aa71366a03bb391cb653e48ae7330e4ef08d3a6948d32dccc4d67f4
│   │       │   ├── 7230af57153401df3bc53ecc8752c941e8e62e00
│   │       │   ├── 82232d9b2f5b4b7c4198008d687d3ac54a232a60
│   │       │   ├── 822f27f20b8db4475cd004a96adcf59a3ec1cdb4
│   │       │   ├── 85a7d6ce53591c288da965559dd1cebd12e26294554a6e72641d82070acdd5b9
│   │       │   ├── 88ab97b97b97567d5b71d418115f49e449c7c07c
│   │       │   ├── 89a96a8adc4e9cd0c994098edc76022e496d35844392562b4694c8fbc583f2da
│   │       │   ├── 8dbe3608918ff5444befe155ae6299dd9655273ac02fb862c65dd1304df54b93
│   │       │   ├── 9244e2565585c0f89bc3a6eeeea080ef3c588375fc0d536074fe88e80b917cda
│   │       │   ├── 9830b0c1532620851b6cdcd6bb2f4abed7d84ea70112497cc7d1e86a5885fdc6
│   │       │   ├── a7777ca66448ab90948ce5a3257e4c959d6eacf0489fbadd5133dbe8f89662ae
│   │       │   ├── a782b2f1cdab4d0bacb2dc0f85d02c4b1e31f0bd
│   │       │   ├── ac850a4c0b3f9ad6bd3e1dea90cc354a74721171
│   │       │   ├── b436540373e1ca87d0f1cc503fe0f78078079846
│   │       │   ├── bfe13860824b3365c0c7f7ccfcddc8ff11645c60051739ff18bc9913f60c98e1
│   │       │   ├── c84bf1d79c1c74d534b5b12adb14dd12151c42f7ae3e4be4f1042b830f80b949
│   │       │   ├── cb4265bb4300a2487e93e82ccfa1924bf9cd1194c1a202ab17a96b4911c27e0b
│   │       │   ├── d20ee8dac2ca63e2d1989b02ecc42595c71d61bf8dd8c8ddc5ad2ee68e7b5be2
│   │       │   ├── d57a942af6a2f57d6a4a0372573c696a2379bf5857c45e2ac69993f3b334514b
│   │       │   ├── ddca2b729846e418b62c557ce7af3a8d2e1ba335e9b3c79d7462640e649b72f7
│   │       │   ├── df848ed5060bac4d0f6e58572aea97d92e909a8a87cf292849237b0e84f6ffdb
│   │       │   ├── e339ed30e8a32f8131da033216f04a053ab80947
│   │       │   ├── e60f3725aeedc88fd319416ef166bda79171a41516a301c27cab9132dc2739d2
│   │       │   ├── eeb50a7998a44ac6f3a03855774d5c12aeca93e2209412679879d2bf604a8fd6
│   │       │   ├── f65a332afe5aa663f0b9d5706f4ae8457b5b4058a842d5c1eb22df505c27d642
│   │       │   └── f65e699f4ca792fbce0e92d1df4c9bbdefe3e21bbdb01c3075cc49470b9bc1cc
│   │       ├── refs
│   │       │   └── main
│   │       └── snapshots
│   │           └── ed6b654c018d742e65a17671e379c5e6ecc87ec9
│   │               └── models
│   │                   ├── Layout
│   │                   │   └── PP-DocLayoutV2
│   │                   │       ├── config.json -> ../../../../../blobs/7230af57153401df3bc53ecc8752c941e8e62e00
│   │                   │       ├── model.safetensors -> ../../../../../blobs/e60f3725aeedc88fd319416ef166bda79171a41516a301c27cab9132dc2739d2
│   │                   │       └── preprocessor_config.json -> ../../../../../blobs/82232d9b2f5b4b7c4198008d687d3ac54a232a60
│   │                   ├── MFR
│   │                   │   ├── pp_formulanet_plus_m
│   │                   │   │   ├── PP-FormulaNet_plus-M_inference.yml -> ../../../../../blobs/88ab97b97b97567d5b71d418115f49e449c7c07c
│   │                   │   │   └── PP-FormulaNet_plus-M.pth -> ../../../../../blobs/034efee70ef56d8ab7cf3b9b945865cdaf22461ad03b0f6e68bf9234f167f035
│   │                   │   └── unimernet_hf_small_2503
│   │                   │       ├── config.json -> ../../../../../blobs/ac850a4c0b3f9ad6bd3e1dea90cc354a74721171
│   │                   │       ├── generation_config.json -> ../../../../../blobs/018a339659fba42e55f0e30df0af9ab61e7909eb
│   │                   │       ├── model.safetensors -> ../../../../../blobs/9244e2565585c0f89bc3a6eeeea080ef3c588375fc0d536074fe88e80b917cda
│   │                   │       ├── README.md -> ../../../../../blobs/822f27f20b8db4475cd004a96adcf59a3ec1cdb4
│   │                   │       ├── special_tokens_map.json -> ../../../../../blobs/a782b2f1cdab4d0bacb2dc0f85d02c4b1e31f0bd
│   │                   │       ├── tokenizer_config.json -> ../../../../../blobs/e339ed30e8a32f8131da033216f04a053ab80947
│   │                   │       └── tokenizer.json -> ../../../../../blobs/b436540373e1ca87d0f1cc503fe0f78078079846
│   │                   ├── OCR
│   │                   │   └── paddleocr_torch
│   │                   │       ├── arabic_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/2ae0a5e1e8151105eb864c4784a8a435821dd1aeddcd4c3018041b0aa897add0
│   │                   │       ├── ch_PP-OCRv4_rec_infer.pth -> ../../../../../blobs/cb4265bb4300a2487e93e82ccfa1924bf9cd1194c1a202ab17a96b4911c27e0b
│   │                   │       ├── ch_PP-OCRv4_rec_server_doc_infer.pth -> ../../../../../blobs/f65e699f4ca792fbce0e92d1df4c9bbdefe3e21bbdb01c3075cc49470b9bc1cc
│   │                   │       ├── ch_PP-OCRv4_rec_server_infer.pth -> ../../../../../blobs/2c0c9f5180ae3e4d8ea9d3830116ac49900abbb2af3985db02c2bbf484bb0bf9
│   │                   │       ├── ch_PP-OCRv5_det_infer.pth -> ../../../../../blobs/df848ed5060bac4d0f6e58572aea97d92e909a8a87cf292849237b0e84f6ffdb
│   │                   │       ├── ch_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/d20ee8dac2ca63e2d1989b02ecc42595c71d61bf8dd8c8ddc5ad2ee68e7b5be2
│   │                   │       ├── ch_PP-OCRv5_rec_server_infer.pth -> ../../../../../blobs/4767ddc90c1532ec01d881a980dae0a0b92679f4f82f88c4e9f92563de69e740
│   │                   │       ├── ch_PP-OCRv6_medium_rec_infer.safetensors -> ../../../../../blobs/5f43c16f2a684b1d2284662178bdb604febd3d6bfdb5ca73828d08d0f7c0c3e9
│   │                   │       ├── ch_PP-OCRv6_small_det_infer.safetensors -> ../../../../../blobs/89a96a8adc4e9cd0c994098edc76022e496d35844392562b4694c8fbc583f2da
│   │                   │       ├── ch_PP-OCRv6_small_rec_infer.safetensors -> ../../../../../blobs/f65a332afe5aa663f0b9d5706f4ae8457b5b4058a842d5c1eb22df505c27d642
│   │                   │       ├── ch_ptocr_mobile_v2.0_cls_infer.pth -> ../../../../../blobs/bfe13860824b3365c0c7f7ccfcddc8ff11645c60051739ff18bc9913f60c98e1
│   │                   │       ├── cyrillic_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/ddca2b729846e418b62c557ce7af3a8d2e1ba335e9b3c79d7462640e649b72f7
│   │                   │       ├── devanagari_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/69eb4ce12aa71366a03bb391cb653e48ae7330e4ef08d3a6948d32dccc4d67f4
│   │                   │       ├── el_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/2ed368d4d02a6733d0be2b982b8ed2d205603c0395e6c4994158527dca637644
│   │                   │       ├── en_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/259a277836bf0e094910949ef4635927ad3f82c20b37f4010749af968967e282
│   │                   │       ├── eslav_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/8dbe3608918ff5444befe155ae6299dd9655273ac02fb862c65dd1304df54b93
│   │                   │       ├── ka_PP-OCRv3_rec_infer.pth -> ../../../../../blobs/4a537f8aa90afb4f3bb63d0950c2d408b18d586509956b4f56652ef0829764f3
│   │                   │       ├── korean_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/405b72b79a652a87c49d92700d5677e82375c5f6e242b6f54e5faf2264f8aeb5
│   │                   │       ├── latin_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/eeb50a7998a44ac6f3a03855774d5c12aeca93e2209412679879d2bf604a8fd6
│   │                   │       ├── Multilingual_PP-OCRv3_det_infer.pth -> ../../../../../blobs/05eb1c89030b269b830ba7f2d424a4ac80c7593ea1795fef9777fedbc18e383f
│   │                   │       ├── seal_PP-OCRv4_det_infer.pth -> ../../../../../blobs/a7777ca66448ab90948ce5a3257e4c959d6eacf0489fbadd5133dbe8f89662ae
│   │                   │       ├── seal_PP-OCRv4_det_server_infer.pth -> ../../../../../blobs/283d716bdd93d011edca4563d218a767b273c47bf9c32cb3e8a0baf5b12c8242
│   │                   │       ├── ta_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/577d0530f55e3856064fb31e8bcd3ca4714151bacd93696a1f8dda9c06e4bdb3
│   │                   │       ├── te_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/85a7d6ce53591c288da965559dd1cebd12e26294554a6e72641d82070acdd5b9
│   │                   │       └── th_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/9830b0c1532620851b6cdcd6bb2f4abed7d84ea70112497cc7d1e86a5885fdc6
│   │                   ├── TabCls
│   │                   │   └── paddle_table_cls
│   │                   │       └── PP-LCNet_x1_0_table_cls.onnx -> ../../../../../blobs/c84bf1d79c1c74d534b5b12adb14dd12151c42f7ae3e4be4f1042b830f80b949
│   │                   └── TabRec
│   │                       ├── SlanetPlus
│   │                       │   └── slanet-plus.onnx -> ../../../../../blobs/d57a942af6a2f57d6a4a0372573c696a2379bf5857c45e2ac69993f3b334514b
│   │                       └── UnetStructure
│   │                           └── unet.onnx -> ../../../../../blobs/0ea48d3a17e35ef5c2e498a5e799566073234d39b1079ca21d9f4fafe73c6d20
│   └── xet
│       ├── https___cas_serv-tGqkUaZf_CBPHQ6h
│       │   └── staging
│       └── logs
│           └── xet_20260910T213833642+0800_50906.log
└── mineru.json
```

# mineru.json 

```json
{
    "bucket_info": {
        "bucket-name-1": [
            "ak",
            "sk",
            "endpoint"
        ],
        "bucket-name-2": [
            "ak",
            "sk",
            "endpoint"
        ]
    },
    "latex-delimiter-config": {
        "display": {
            "left": "$$",
            "right": "$$"
        },
        "inline": {
            "left": "$",
            "right": "$"
        }
    },
    "llm-aided-config": {
        "title_aided": {
            "api_key": "your_api_key",
            "base_url": "https://dashscope.aliyuncs.com/compatible-mode/v1",
            "model": "qwen3.5-plus",
            "enable_thinking": false,
            "enable": false
        }
    },
    "models-dir": {
        "pipeline": "/Users/jeffreylin/Documents/side_project/mineru_playground/mineru-data/hf-cache/hub/models--opendatalab--PDF-Extract-Kit-1.0/snapshots/ed6b654c018d742e65a17671e379c5e6ecc87ec9",
        "vlm": "/Users/jeffreylin/Documents/side_project/mineru_playground/mineru-data/hf-cache/hub/models--opendatalab--MinerU2.5-Pro-2605-1.2B/snapshots/bff20d4ae2bf202df9f45284b4d43681555a97ed"
    },
    "model-source": "huggingface",
    "config_version": "1.3.2"
}
```

# Size Inspect: 

```bash
[4.6G]  .
├── [4.6G]  hub
│   ├── [2.4G]  models--opendatalab--PDF-Extract-Kit-1.0
│   │   ├── [2.4G]  blobs
│   │   │   ├── [773M]  9244e2565585c0f89bc3a6eeeea080ef3c588375fc0d536074fe88e80b917cda
│   │   │   ├── [589M]  034efee70ef56d8ab7cf3b9b945865cdaf22461ad03b0f6e68bf9234f167f035
│   │   │   ├── [205M]  e60f3725aeedc88fd319416ef166bda79171a41516a301c27cab9132dc2739d2
│   │   │   ├── [128M]  4767ddc90c1532ec01d881a980dae0a0b92679f4f82f88c4e9f92563de69e740
│   │   │   ├── [109M]  283d716bdd93d011edca4563d218a767b273c47bf9c32cb3e8a0baf5b12c8242
│   │   │   ├── [ 96M]  f65e699f4ca792fbce0e92d1df4c9bbdefe3e21bbdb01c3075cc49470b9bc1cc
│   │   │   ├── [ 92M]  2c0c9f5180ae3e4d8ea9d3830116ac49900abbb2af3985db02c2bbf484bb0bf9
│   │   │   ├── [ 73M]  5f43c16f2a684b1d2284662178bdb604febd3d6bfdb5ca73828d08d0f7c0c3e9
│   │   │   ├── [ 31M]  d20ee8dac2ca63e2d1989b02ecc42595c71d61bf8dd8c8ddc5ad2ee68e7b5be2
│   │   │   ├── [ 28M]  405b72b79a652a87c49d92700d5677e82375c5f6e242b6f54e5faf2264f8aeb5
│   │   │   ├── [ 26M]  cb4265bb4300a2487e93e82ccfa1924bf9cd1194c1a202ab17a96b4911c27e0b
│   │   │   ├── [ 23M]  ddca2b729846e418b62c557ce7af3a8d2e1ba335e9b3c79d7462640e649b72f7
│   │   │   ├── [ 23M]  eeb50a7998a44ac6f3a03855774d5c12aeca93e2209412679879d2bf604a8fd6
│   │   │   ├── [ 23M]  2ae0a5e1e8151105eb864c4784a8a435821dd1aeddcd4c3018041b0aa897add0
│   │   │   ├── [ 23M]  69eb4ce12aa71366a03bb391cb653e48ae7330e4ef08d3a6948d32dccc4d67f4
│   │   │   ├── [ 23M]  85a7d6ce53591c288da965559dd1cebd12e26294554a6e72641d82070acdd5b9
│   │   │   ├── [ 23M]  9830b0c1532620851b6cdcd6bb2f4abed7d84ea70112497cc7d1e86a5885fdc6
│   │   │   ├── [ 23M]  577d0530f55e3856064fb31e8bcd3ca4714151bacd93696a1f8dda9c06e4bdb3
│   │   │   ├── [ 23M]  8dbe3608918ff5444befe155ae6299dd9655273ac02fb862c65dd1304df54b93
│   │   │   ├── [ 23M]  259a277836bf0e094910949ef4635927ad3f82c20b37f4010749af968967e282
│   │   │   ├── [ 23M]  2ed368d4d02a6733d0be2b982b8ed2d205603c0395e6c4994158527dca637644
│   │   │   ├── [ 20M]  f65a332afe5aa663f0b9d5706f4ae8457b5b4058a842d5c1eb22df505c27d642
│   │   │   ├── [ 14M]  a7777ca66448ab90948ce5a3257e4c959d6eacf0489fbadd5133dbe8f89662ae
│   │   │   ├── [ 14M]  df848ed5060bac4d0f6e58572aea97d92e909a8a87cf292849237b0e84f6ffdb
│   │   │   ├── [9.5M]  89a96a8adc4e9cd0c994098edc76022e496d35844392562b4694c8fbc583f2da
│   │   │   ├── [8.6M]  4a537f8aa90afb4f3bb63d0950c2d408b18d586509956b4f56652ef0829764f3
│   │   │   ├── [7.9M]  0ea48d3a17e35ef5c2e498a5e799566073234d39b1079ca21d9f4fafe73c6d20
│   │   │   ├── [7.4M]  d57a942af6a2f57d6a4a0372573c696a2379bf5857c45e2ac69993f3b334514b
│   │   │   ├── [6.5M]  c84bf1d79c1c74d534b5b12adb14dd12151c42f7ae3e4be4f1042b830f80b949
│   │   │   ├── [3.4M]  b436540373e1ca87d0f1cc503fe0f78078079846
│   │   │   ├── [2.4M]  05eb1c89030b269b830ba7f2d424a4ac80c7593ea1795fef9777fedbc18e383f
│   │   │   ├── [2.1M]  88ab97b97b97567d5b71d418115f49e449c7c07c
│   │   │   ├── [575K]  bfe13860824b3365c0c7f7ccfcddc8ff11645c60051739ff18bc9913f60c98e1
│   │   │   ├── [5.0K]  ac850a4c0b3f9ad6bd3e1dea90cc354a74721171
│   │   │   ├── [4.4K]  e339ed30e8a32f8131da033216f04a053ab80947
│   │   │   ├── [3.7K]  7230af57153401df3bc53ecc8752c941e8e62e00
│   │   │   ├── [1.6K]  822f27f20b8db4475cd004a96adcf59a3ec1cdb4
│   │   │   ├── [ 575]  82232d9b2f5b4b7c4198008d687d3ac54a232a60
│   │   │   ├── [ 552]  a782b2f1cdab4d0bacb2dc0f85d02c4b1e31f0bd
│   │   │   └── [ 191]  018a339659fba42e55f0e30df0af9ab61e7909eb
│   │   ├── [5.7K]  snapshots
│   │   │   └── [5.6K]  ed6b654c018d742e65a17671e379c5e6ecc87ec9
│   │   │       └── [5.5K]  models
│   │   │           ├── [3.0K]  OCR
│   │   │           │   └── [2.9K]  paddleocr_torch
│   │   │           │       ├── [  85]  arabic_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/2ae0a5e1e8151105eb864c4784a8a435821dd1aeddcd4c3018041b0aa897add0
│   │   │           │       ├── [  85]  ch_PP-OCRv4_rec_infer.pth -> ../../../../../blobs/cb4265bb4300a2487e93e82ccfa1924bf9cd1194c1a202ab17a96b4911c27e0b
│   │   │           │       ├── [  85]  ch_PP-OCRv4_rec_server_doc_infer.pth -> ../../../../../blobs/f65e699f4ca792fbce0e92d1df4c9bbdefe3e21bbdb01c3075cc49470b9bc1cc
│   │   │           │       ├── [  85]  ch_PP-OCRv4_rec_server_infer.pth -> ../../../../../blobs/2c0c9f5180ae3e4d8ea9d3830116ac49900abbb2af3985db02c2bbf484bb0bf9
│   │   │           │       ├── [  85]  ch_PP-OCRv5_det_infer.pth -> ../../../../../blobs/df848ed5060bac4d0f6e58572aea97d92e909a8a87cf292849237b0e84f6ffdb
│   │   │           │       ├── [  85]  ch_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/d20ee8dac2ca63e2d1989b02ecc42595c71d61bf8dd8c8ddc5ad2ee68e7b5be2
│   │   │           │       ├── [  85]  ch_PP-OCRv5_rec_server_infer.pth -> ../../../../../blobs/4767ddc90c1532ec01d881a980dae0a0b92679f4f82f88c4e9f92563de69e740
│   │   │           │       ├── [  85]  ch_PP-OCRv6_medium_rec_infer.safetensors -> ../../../../../blobs/5f43c16f2a684b1d2284662178bdb604febd3d6bfdb5ca73828d08d0f7c0c3e9
│   │   │           │       ├── [  85]  ch_PP-OCRv6_small_det_infer.safetensors -> ../../../../../blobs/89a96a8adc4e9cd0c994098edc76022e496d35844392562b4694c8fbc583f2da
│   │   │           │       ├── [  85]  ch_PP-OCRv6_small_rec_infer.safetensors -> ../../../../../blobs/f65a332afe5aa663f0b9d5706f4ae8457b5b4058a842d5c1eb22df505c27d642
│   │   │           │       ├── [  85]  ch_ptocr_mobile_v2.0_cls_infer.pth -> ../../../../../blobs/bfe13860824b3365c0c7f7ccfcddc8ff11645c60051739ff18bc9913f60c98e1
│   │   │           │       ├── [  85]  cyrillic_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/ddca2b729846e418b62c557ce7af3a8d2e1ba335e9b3c79d7462640e649b72f7
│   │   │           │       ├── [  85]  devanagari_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/69eb4ce12aa71366a03bb391cb653e48ae7330e4ef08d3a6948d32dccc4d67f4
│   │   │           │       ├── [  85]  el_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/2ed368d4d02a6733d0be2b982b8ed2d205603c0395e6c4994158527dca637644
│   │   │           │       ├── [  85]  en_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/259a277836bf0e094910949ef4635927ad3f82c20b37f4010749af968967e282
│   │   │           │       ├── [  85]  eslav_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/8dbe3608918ff5444befe155ae6299dd9655273ac02fb862c65dd1304df54b93
│   │   │           │       ├── [  85]  ka_PP-OCRv3_rec_infer.pth -> ../../../../../blobs/4a537f8aa90afb4f3bb63d0950c2d408b18d586509956b4f56652ef0829764f3
│   │   │           │       ├── [  85]  korean_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/405b72b79a652a87c49d92700d5677e82375c5f6e242b6f54e5faf2264f8aeb5
│   │   │           │       ├── [  85]  latin_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/eeb50a7998a44ac6f3a03855774d5c12aeca93e2209412679879d2bf604a8fd6
│   │   │           │       ├── [  85]  Multilingual_PP-OCRv3_det_infer.pth -> ../../../../../blobs/05eb1c89030b269b830ba7f2d424a4ac80c7593ea1795fef9777fedbc18e383f
│   │   │           │       ├── [  85]  seal_PP-OCRv4_det_infer.pth -> ../../../../../blobs/a7777ca66448ab90948ce5a3257e4c959d6eacf0489fbadd5133dbe8f89662ae
│   │   │           │       ├── [  85]  seal_PP-OCRv4_det_server_infer.pth -> ../../../../../blobs/283d716bdd93d011edca4563d218a767b273c47bf9c32cb3e8a0baf5b12c8242
│   │   │           │       ├── [  85]  ta_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/577d0530f55e3856064fb31e8bcd3ca4714151bacd93696a1f8dda9c06e4bdb3
│   │   │           │       ├── [  85]  te_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/85a7d6ce53591c288da965559dd1cebd12e26294554a6e72641d82070acdd5b9
│   │   │           │       └── [  85]  th_PP-OCRv5_rec_infer.pth -> ../../../../../blobs/9830b0c1532620851b6cdcd6bb2f4abed7d84ea70112497cc7d1e86a5885fdc6
│   │   │           ├── [1.1K]  MFR
│   │   │           │   ├── [ 739]  unimernet_hf_small_2503
│   │   │           │   │   ├── [  85]  model.safetensors -> ../../../../../blobs/9244e2565585c0f89bc3a6eeeea080ef3c588375fc0d536074fe88e80b917cda
│   │   │           │   │   ├── [  61]  config.json -> ../../../../../blobs/ac850a4c0b3f9ad6bd3e1dea90cc354a74721171
│   │   │           │   │   ├── [  61]  generation_config.json -> ../../../../../blobs/018a339659fba42e55f0e30df0af9ab61e7909eb
│   │   │           │   │   ├── [  61]  README.md -> ../../../../../blobs/822f27f20b8db4475cd004a96adcf59a3ec1cdb4
│   │   │           │   │   ├── [  61]  special_tokens_map.json -> ../../../../../blobs/a782b2f1cdab4d0bacb2dc0f85d02c4b1e31f0bd
│   │   │           │   │   ├── [  61]  tokenizer_config.json -> ../../../../../blobs/e339ed30e8a32f8131da033216f04a053ab80947
│   │   │           │   │   └── [  61]  tokenizer.json -> ../../../../../blobs/b436540373e1ca87d0f1cc503fe0f78078079846
│   │   │           │   └── [ 274]  pp_formulanet_plus_m
│   │   │           │       ├── [  85]  PP-FormulaNet_plus-M.pth -> ../../../../../blobs/034efee70ef56d8ab7cf3b9b945865cdaf22461ad03b0f6e68bf9234f167f035
│   │   │           │       └── [  61]  PP-FormulaNet_plus-M_inference.yml -> ../../../../../blobs/88ab97b97b97567d5b71d418115f49e449c7c07c
│   │   │           ├── [ 490]  TabRec
│   │   │           │   ├── [ 181]  SlanetPlus
│   │   │           │   │   └── [  85]  slanet-plus.onnx -> ../../../../../blobs/d57a942af6a2f57d6a4a0372573c696a2379bf5857c45e2ac69993f3b334514b
│   │   │           │   └── [ 181]  UnetStructure
│   │   │           │       └── [  85]  unet.onnx -> ../../../../../blobs/0ea48d3a17e35ef5c2e498a5e799566073234d39b1079ca21d9f4fafe73c6d20
│   │   │           ├── [ 463]  Layout
│   │   │           │   └── [ 367]  PP-DocLayoutV2
│   │   │           │       ├── [  85]  model.safetensors -> ../../../../../blobs/e60f3725aeedc88fd319416ef166bda79171a41516a301c27cab9132dc2739d2
│   │   │           │       ├── [  61]  config.json -> ../../../../../blobs/7230af57153401df3bc53ecc8752c941e8e62e00
│   │   │           │       └── [  61]  preprocessor_config.json -> ../../../../../blobs/82232d9b2f5b4b7c4198008d687d3ac54a232a60
│   │   │           └── [ 277]  TabCls
│   │   │               └── [ 181]  paddle_table_cls
│   │   │                   └── [  85]  PP-LCNet_x1_0_table_cls.onnx -> ../../../../../blobs/c84bf1d79c1c74d534b5b12adb14dd12151c42f7ae3e4be4f1042b830f80b949
│   │   └── [ 136]  refs
│   │       └── [  40]  main
│   └── [2.2G]  models--opendatalab--MinerU2.5-Pro-2605-1.2B
│       ├── [2.2G]  blobs
│       │   ├── [2.2G]  abf8681ca63b8dec7b67de257af47b821f179442f72998d0696ae2ed9232a5f0
│       │   ├── [ 11M]  dceac5fc54a795ee7570d17902b47bd05412dc2afa62bdf325c3f97fcb5b87fe
│       │   ├── [2.6M]  4783fe10ac3adce15ac8f358ef5462739852c569
│       │   ├── [1.6M]  31349551d90c7606f325fe0f11bbb8bd5fa0d7c7
│       │   ├── [ 15K]  b4600696ae5bcd5e37d51fbb70a631c739c87c87
│       │   ├── [6.4K]  0bedcd9f2b28e6e57d783dd088c69289753e17f5
│       │   ├── [2.8K]  c6bf7cfa93d56adb832bef501f1e32aae541f20a
│       │   ├── [1.5K]  52373fe24473b1aa44333d318f578ae6bf04b49b
│       │   ├── [1017]  6c226632394ae7474b0d4b13e15793eac2e21ee9
│       │   ├── [ 919]  3446fd17813474e7b8350844f7bf422b51b28f40
│       │   ├── [ 800]  d9604a3ba04db43dc4aa59d1429d2bc7744a7ffb
│       │   ├── [ 316]  3973ad8ffb828cdd565625b5c0edd8b53d3779bd
│       │   └── [ 215]  0fd0c936289431166eb3794fe46578222c55f120
│       ├── [1.2K]  snapshots
│       │   └── [1.1K]  bff20d4ae2bf202df9f45284b4d43681555a97ed
│       │       ├── [  76]  model.safetensors -> ../../blobs/abf8681ca63b8dec7b67de257af47b821f179442f72998d0696ae2ed9232a5f0
│       │       ├── [  76]  tokenizer.json -> ../../blobs/dceac5fc54a795ee7570d17902b47bd05412dc2afa62bdf325c3f97fcb5b87fe
│       │       ├── [  52]  added_tokens.json -> ../../blobs/d9604a3ba04db43dc4aa59d1429d2bc7744a7ffb
│       │       ├── [  52]  chat_template.jinja -> ../../blobs/6c226632394ae7474b0d4b13e15793eac2e21ee9
│       │       ├── [  52]  config.json -> ../../blobs/c6bf7cfa93d56adb832bef501f1e32aae541f20a
│       │       ├── [  52]  generation_config.json -> ../../blobs/0fd0c936289431166eb3794fe46578222c55f120
│       │       ├── [  52]  merges.txt -> ../../blobs/31349551d90c7606f325fe0f11bbb8bd5fa0d7c7
│       │       ├── [  52]  preprocessor_config.json -> ../../blobs/3973ad8ffb828cdd565625b5c0edd8b53d3779bd
│       │       ├── [  52]  README.md -> ../../blobs/b4600696ae5bcd5e37d51fbb70a631c739c87c87
│       │       ├── [  52]  special_tokens_map.json -> ../../blobs/3446fd17813474e7b8350844f7bf422b51b28f40
│       │       ├── [  52]  tokenizer_config.json -> ../../blobs/0bedcd9f2b28e6e57d783dd088c69289753e17f5
│       │       └── [  52]  vocab.json -> ../../blobs/4783fe10ac3adce15ac8f358ef5462739852c569
│       └── [ 136]  refs
│           └── [  40]  main
└── [1.5M]  xet
    ├── [1.5M]  logs
    │   └── [1.5M]  xet_20260910T213833642+0800_50906.log
    └── [ 160]  https___cas_serv-tGqkUaZf_CBPHQ6h
        └── [  64]  staging
```


# Demo Dockerfile

```bash
# 基礎映像：vllm-openai v0.21.0（CUDA 13.0，支援 Volta~Blackwell 架構，Compute Capability 7.0~12.1）
# 若環境為 CUDA 12.9，改用下方註解的 -cu129 映像
FROM vllm/vllm-openai:v0.21.0
# FROM vllm/vllm-openai:v0.21.0-cu129

# 安裝 opencv 所需的 libgl，以及中文字型（Noto CJK）避免 PDF 渲染缺字
RUN apt-get update && \
    apt-get install -y \
        fonts-noto-core \
        fonts-noto-cjk \
        fontconfig \
        libgl1 && \
    fc-cache -fv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 安裝 MinerU 3.4.0（core + vllm extras，含 API server 依賴）
# 若需鎖定「任何 3.4.x」而非精確 3.4.0，可改為 'mineru[core]>=3.4.0,<3.5.0'
RUN python3 -m pip install -U 'mineru[core]==3.4.0' --break-system-packages && \
    python3 -m pip cache purge

# 下載模型並更新設定檔（預設走 HuggingFace，中國區可改 -s modelscope）
RUN /bin/bash -c "mineru-models-download -s huggingface -m all"

# Entry point：啟用本地模型設定後，執行傳入指令
ENTRYPOINT ["/bin/bash", "-c", "export MINERU_MODEL_SOURCE=local && exec \"$@\"", "--"]

```
