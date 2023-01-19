
# Update the
    # stack-name
    # template-url
    # SNS ARN
    # region
    # profile

aws cloudformation create-stack \
  --stack-name clouwatch-redis-alarm \
  --template-url  https://BucketName-us-east-1.s3.amazonaws.com/cloudwatch-alarm-redis.yml \
  --parameters \
      ParameterKey=CacheClusterId,ParameterValue=api-cache \
      ParameterKey=NameSpace,ParameterValue=AWS/ElastiCache \
      ParameterKey=ThresholdEngineCpuUtilization,ParameterValue=25 \
      ParameterKey=EngineCpuMetricName,ParameterValue=EngineCPUUtilization \
      ParameterKey=SwapUsageMetricName,ParameterValue=SwapUsage \
      ParameterKey=ThresholdSwapUsage,ParameterValue=3145728 \
      ParameterKey=SetTypeCmdsMetricName,ParameterValue=SetTypeCmds \
      ParameterKey=ThresholdSetTypeCmds,ParameterValue=1000 \
      ParameterKey=SetTypeCmdsLatencyMetricName,ParameterValue=SetTypeCmdsLatency \
      ParameterKey=ThresholdSetTypeCmdsLatency,ParameterValue=20 \
      ParameterKey=GetTypeCmdsMetricName,ParameterValue=GetTypeCmds \
      ParameterKey=ThresholdGetTypeCmds,ParameterValue=6000 \
      ParameterKey=GetTypeCmdsLatencyMetricName,ParameterValue=GetTypeCmdsLatency \
      ParameterKey=ThresholdGetTypeCmdsLatency,ParameterValue=2 \
      ParameterKey=HashBasedCmdsMetricName,ParameterValue=HashBasedCmds \
      ParameterKey=ThresholdHashBasedCmds,ParameterValue=100 \
      ParameterKey=HashBasedCmdsLatencyMetricName,ParameterValue=HashBasedCmdsLatency \
      ParameterKey=ThresholdHashBasedCmdsLatency,ParameterValue=10 \
      ParameterKey=KeyBasedCmdsMetricName,ParameterValue=KeyBasedCmds \
      ParameterKey=ThresholdKeyBasedCmds,ParameterValue=25 \
      ParameterKey=KeyBasedCmdsLatencyMetricName,ParameterValue=KeyBasedCmdsLatency \
      ParameterKey=ThresholdKeyBasedCmdsLatency,ParameterValue=10 \
      ParameterKey=NewConnectionsMetricName,ParameterValue=NewConnections \
      ParameterKey=ThresholdNewConnections,ParameterValue=10 \
      ParameterKey=MemoryFragmentationRationMetricName,ParameterValue=MemoryFragmentationRatio \
      ParameterKey=ThresholdMemoryFragmentationRation,ParameterValue=1 \
      ParameterKey=EvictionsMetricName,ParameterValue=Evictions \
      ParameterKey=ThresholdEvictions,ParameterValue=1 \
      ParameterKey=BytesUsedForCacheMetricName,ParameterValue=BytesUsedForCache \
      ParameterKey=ThresholdBytesUsedForCache,ParameterValue=5261334937 \
      ParameterKey=CriticalAlarmSnsArn,ParameterValue=SNS-ARN \
  --region= \
  --profile=
