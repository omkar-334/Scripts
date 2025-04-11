# Data Libraries - RoadMap

Libraries we have around LLM datasets:

1. Argilla / distilabel
2. Ragas (test dataset)
3. llm swarm [https://github.com/huggingface/llm-swarm](https://github.com/huggingface/llm-swarm)
4. Auto prompt: [https://github.com/Eladlev/AutoPrompt](https://github.com/Eladlev/AutoPrompt)
5. Self contrast [https://github.com/THUDM/Self-Contrast](https://github.com/THUDM/Self-Contrast)
6. Data dreamer [https://datadreamer.dev/docs/latest/index.html](https://datadreamer.dev/docs/latest/index.html)
7. Data juicer [https://github.com/modelscope/data-juicer](https://github.com/modelscope/data-juicer)
8. Taipy: [https://github.com/Avaiga/taipy](https://github.com/Avaiga/taipy)
9. Text cluster: [https://github.com/huggingface/text-clustering](https://github.com/huggingface/text-clustering)
10. Superfiltering [https://github.com/tianyi-lab/Superfiltering](https://github.com/tianyi-lab/Superfiltering)
11. Lilac [https://github.com/lilacai/lilac](https://github.com/lilacai/lilac)
12. [https://dria.co/](https://dria.co/) 
13. Glaive
14. FiddleCube
15. Gretel
16. [https://syntheticus.ai/](https://syntheticus.ai/) 
17. [https://x.com/FirstBatchxyz_](https://x.com/FirstBatchxyz_) / [https://dria.co/](https://dria.co/) 
18. Augment Toolkit: [https://github.com/e-p-armstrong/augmentoolkit](https://github.com/e-p-armstrong/augmentoolkit)

## 1. Distilabel

[https://distilabel.argilla.io/dev/components-gallery/](https://distilabel.argilla.io/dev/components-gallery/)

**Tasks Overview:**

1. Instruction:
    1. Evol Instruct → DONE
    2. Evol Complexity: Based on evol instruct but different prompts. → SAME as Evol Instruct [SKIPPED]
    3. EvolInstructGenerator
    4. EvolComplexityGenerator
2. Response:
    1. Evol Quality
    2. TextGeneration → DONE
    3. ChatGeneration → DONE
3. Document
    1. Genstruct: Generate Q/A pair from document.
4. Training Embedding Models
    1. GenerateTextRetrievalData
    2. GenerateShortTextMatchingData
    3. GenerateLongTextMatchingData
    4. GenerateTextClassificationData
    5. GenerateSentencePair
        1. Given anchor sentence, generate pos, nos samples.
    6. MonolingualTripletGenerator
    7.  BitextRetrievalGenerator
    8. EmbeddingTaskGenerator
    9. *GenerateEmbeddings* ****: using last hidden state of LLM.
5. Score
    1. InstructionBacktranslation
    2. PrometheusEval
    3. QualityScorer
    4. UltraFeedback
    5. PairRM
    6. Complexity Scorer
6. Expand Dataset
    1. Self Instruct
7. Structured Data Generation:
    1. StructuredGeneration

**Features:**

1. Can push dataset to Argilla and get human feedback.

**Papers Integrated:**

1. Self Instruct
2. DEITA
3. Evol Instruct

**Libraries Integrated:**

1. Instruct for structured data generation.

## Dataformer

1. Synthetic data papers integration.
2. All LLM API provider integration.

## Spaces

1. [https://huggingface.co/spaces/argilla/domain-specific-datasets-welcome](https://huggingface.co/spaces/argilla/domain-specific-datasets-welcome) 
2. 

## Questions:

1. Let’s say I take a HF dataset, I want to combine two columns and pass it as input for text generation. How can I do with distilabel if it takes the dataset directly as argument.

# Data Papers

1. Dataformer https://github.com/DataformerAI/dataformer-app

Github:

1. Pluto synthentic data generation [https://github.com/redotvideo/pluto](https://github.com/redotvideo/pluto)
2. Starcoder cleaning: [https://twitter.com/sivil_taram/status/1779413759423062114](https://twitter.com/sivil_taram/status/1779413759423062114) 
3. Better Synthetic Data by Retrieving and Transforming Existing Datasets [https://twitter.com/arankomatsuzaki/status/1782600350282715532](https://twitter.com/arankomatsuzaki/status/1782600350282715532)
4. Data quality metrics: [https://www.linkedin.com/posts/swarooprm7_data-is-king-in-the-llm-world-i-am-activity-7191291753788772352-JUTm?utm_source=share&utm_medium=member_desktop](https://www.linkedin.com/posts/swarooprm7_data-is-king-in-the-llm-world-i-am-activity-7191291753788772352-JUTm?utm_source=share&utm_medium=member_desktop)
5. Datasets and synthetic data creation libraries: https://github.com/davanstrien/awesome-synthetic-datasets

1. Google Survey Best Practises for Synthetic data: [https://twitter.com/arankomatsuzaki/status/1778609441551622372](https://twitter.com/arankomatsuzaki/status/1778609441551622372)
2. Cosmopedia Synthentic Data Generation: [https://huggingface.co/blog/cosmopedia](https://huggingface.co/blog/cosmopedia)
3. DEITA: [https://arxiv.org/abs/2312.15685](https://arxiv.org/abs/2312.15685) 
4. Superfiltering: [https://twitter.com/zhoutianyi/status/1761040930465788202](https://twitter.com/zhoutianyi/status/1761040930465788202) 
5. Alignment while being poor: [https://twitter.com/swaroopnath6/status/1764924435667055032](https://twitter.com/swaroopnath6/status/1764924435667055032)
6. Argilla data collection: [https://www.youtube.com/watch?v=lkddA2SIEFA](https://www.youtube.com/watch?v=lkddA2SIEFA)
7. [https://www.linkedin.com/posts/kaustubh-dholé-3929b32a_naacl2024-naacl2024-ir-activity-7183010210918080512-eZNZ?utm_source=share&utm_medium=member_desktop](https://www.linkedin.com/posts/kaustubh-dhol%C3%A9-3929b32a_naacl2024-naacl2024-ir-activity-7183010210918080512-eZNZ?utm_source=share&utm_medium=member_desktop)
8. Long is more:
    1. Paper: [https://arxiv.org/abs/2402.04833](https://arxiv.org/abs/2402.04833) 
    2. Testing: [https://twitter.com/_lewtun/status/1758520258132865210](https://twitter.com/_lewtun/status/1758520258132865210)
9. Less: [https://twitter.com/xiamengzhou/status/1757832742903943215](https://twitter.com/xiamengzhou/status/1757832742903943215)
10. Synthetic data overview: [https://twitter.com/eugeneyan/status/1757574879950360606](https://twitter.com/eugeneyan/status/1757574879950360606) 
11. Synthetic data generation papers: [https://twitter.com/eugeneyan/status/1744179600056545300](https://twitter.com/eugeneyan/status/1744179600056545300) 
12. Survey on data selection: [https://twitter.com/AlbalakAlon/status/1762509535233941706](https://twitter.com/AlbalakAlon/status/1762509535233941706) 
13. Clean lab data selection: [https://cleanlab.ai/blog/filter-llm-tuning-data/](https://cleanlab.ai/blog/filter-llm-tuning-data/)
14. Dataset list for LLMs: [https://twitter.com/omarsar0/status/1763233452852134001](https://twitter.com/omarsar0/status/1763233452852134001)
15. Evaluation drive development: [https://wandb.ai/wandbot/wandbot_public/reports/Evaluation-Driven-Development-Improving-WandBot-our-LLM-Powered-Documentation-App--Vmlldzo2NTY1MDI0](https://wandb.ai/wandbot/wandbot_public/reports/Evaluation-Driven-Development-Improving-WandBot-our-LLM-Powered-Documentation-App--Vmlldzo2NTY1MDI0)
16. Microsoft Math Orca dataset with agent approach creation: [https://twitter.com/Arindam1408/status/1764761895473762738](https://twitter.com/Arindam1408/status/1764761895473762738) 
    1. Hindi translated: [https://huggingface.co/datasets/GenVRadmin/Aryabhatta-Orca-Maths-Hindi](https://huggingface.co/datasets/GenVRadmin/Aryabhatta-Orca-Maths-Hindi)
17. Convert pre-training data to instruction tuning dataset: [https://twitter.com/stevebach/status/1763591999129608580](https://twitter.com/stevebach/status/1763591999129608580)
18. Llama beyond English [https://arxiv.org/abs/2401.01055](https://arxiv.org/abs/2401.01055)
19. LESS: [https://twitter.com/SadhikaMalladi/status/1775975556011409460](https://twitter.com/SadhikaMalladi/status/1775975556011409460)
20. GLAN (Synthetic from Scratch) - https://arxiv.org/pdf/2402.13064
21. DataDreamer - https://arxiv.org/pdf/2402.10379 - https://github.com/datadreamer-dev/DataDreamer
22. Google Synthetic Data Best Practices - https://arxiv.org/pdf/2404.07503
23. DataTune / Prompt2Model - https://arxiv.org/pdf/2404.14361 - https://github.com/neulab/prompt2model/tree/main/prompt2model
24. MegaParse - https://github.com/QuivrHQ/MegaParse/tree/main
25. Synthetic Data Types - https://x.com/jd_pressman/status/1797396190210015716
26. https://www.oreilly.com/radar/what-we-learned-from-a-year-of-building-with-llms-part-i/
27. 

```jsx

1. vocabulary extension, i.e. adding new tokens for chinese and then continuing training for 30 billion tokens performs worse than keeping the same tokenizer and continuing for 0.5 billion chinese tokens. A plausible hypothesis is the existence of crosslingual semantic alignment within LLMs, which vocabulary expansion might disrupt.

2. We find that further Chinese pretraining with 100 billion tokens or fewer is insufficient to significantly improve LLaMA’s knowledge level. However, enhancing LLaMA’s response quality (i.e., language generation capability), requires only hundreds of thousands of `instruction data` rather than a largescale further pretraining.

3. when finetuning you can't just train on the new language only, but need to train on a mix of English + other language, otherwise performance on English may get compromised.

--------------------------------------
In simpler terms this suggest that:
1. If the base model contain crosslingual examples (example: hindi and english both used in same sentence/para) then vocabulary extension have negative impact on performance, but ignoring vocab extension cause usage of more tokens on languages like Hindi causing slow inference and high cost.

2. Continued pre-training under 100 billion tokens, doesn't improve model knowledge level. This is bad because if we need even more tokens, it becomes costly and we can then even go towards training from scratch rather.

3. Finetuning must be done with combination of English and Hindi.
```

## Reasoning

1. [https://twitter.com/bindureddy/status/1740033326088384533](https://twitter.com/bindureddy/status/1740033326088384533)
2. [https://twitter.com/WeiLiu99/status/1740216412344607172](https://twitter.com/WeiLiu99/status/1740216412344607172)

## Model merging

1. [https://huggingface.co/blog/mlabonne/merge-models](https://huggingface.co/blog/mlabonne/merge-models) 

## LLM for Scoring

1. [https://twitter.com/aparnadhinak/status/1748368364395721128](https://twitter.com/aparnadhinak/status/1748368364395721128) 

## Quantize

AutoQuantize (GGUF, AWQ, EXL2, GPTQ)

Quantize your favorite LLMs and upload them to HF hub with just 2 clicks.

Select any quantization format, enter a few parameters, and create your version of your favorite models. This notebook only requires a free T4 GPU on Colab.

[https://colab.research.google.com/drive/1Li3USnl3yoYctqJLtYux3LAIy4Bnnv3J?usp=sharing](https://colab.research.google.com/drive/1Li3USnl3yoYctqJLtYux3LAIy4Bnnv3J?usp=sharing)

## Tools

Data Wrangler to visualize and filter data in VS Code:

[https://marketplace.visualstudio.com/items?itemName=ms-toolsai.datawrangler&ssr=false#overview](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.datawrangler&ssr=false#overview)