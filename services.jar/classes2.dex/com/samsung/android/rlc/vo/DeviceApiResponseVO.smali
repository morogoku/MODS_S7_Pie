.class public Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
.super Ljava/lang/Object;
.source "DeviceApiResponseVO.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "response"
.end annotation


# instance fields
.field private bankName:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private cert:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private cmd:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private data:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private dmAddr:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private errorCode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private errorDescription:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private imei:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private imeiHash:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private interval:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private mgAddr:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private nonceSvr:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private oprtId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private pin:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private requestor:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private resultSvr:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private retryIntervalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "retryInterval"
        name = "retryIntervalList"
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private rlcId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private sign:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private tel:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->rlcId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->oprtId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->dmAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->mgAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cert:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->nonceSvr:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->resultSvr:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->pin:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->tel:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->requestor:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imeiHash:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->sign:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->interval:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->bankName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->retryIntervalList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBankName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getCert()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cert:Ljava/lang/String;

    return-object v0
.end method

.method public getCertByte()[B
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cert:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCmd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDmAddr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->dmAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImeiHash()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imeiHash:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->interval:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->message:Ljava/lang/String;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessageByte()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v0

    :cond_10
    goto :goto_15

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_15
    const-string v0, ""

    return-object v0
.end method

.method public getMessageByte()[B
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->message:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMgAddr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->mgAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceSvr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->nonceSvr:Ljava/lang/String;

    return-object v0
.end method

.method public getOprtId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->oprtId:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getPinByte()[B
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->pin:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->pin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestor()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->requestor:Ljava/lang/String;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestorByte()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v0

    :cond_10
    goto :goto_15

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_15
    const-string v0, ""

    return-object v0
.end method

.method public getRequestorByte()[B
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->requestor:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->requestor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultSvr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->resultSvr:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryIntervalList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->retryIntervalList:Ljava/util/List;

    return-object v0
.end method

.method public getRlcId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->rlcId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignByte()[B
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->sign:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->sign:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenByte()[B
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->token:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBankName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->bankName:Ljava/lang/String;

    return-void
.end method

.method public setCert(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cert:Ljava/lang/String;

    return-void
.end method

.method public setCmd(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cmd:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->data:Ljava/lang/String;

    return-void
.end method

.method public setDmAddr(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->dmAddr:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorDescription:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->icon:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImeiHash(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imeiHash:Ljava/lang/String;

    return-void
.end method

.method public setInterval(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->interval:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->message:Ljava/lang/String;

    return-void
.end method

.method public setMgAddr(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->mgAddr:Ljava/lang/String;

    return-void
.end method

.method public setNonceSvr(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->nonceSvr:Ljava/lang/String;

    return-void
.end method

.method public setOprtId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->oprtId:Ljava/lang/String;

    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->pin:Ljava/lang/String;

    return-void
.end method

.method public setRequestor(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->requestor:Ljava/lang/String;

    return-void
.end method

.method public setResultSvr(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->resultSvr:Ljava/lang/String;

    return-void
.end method

.method public setRetryIntervalList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->retryIntervalList:Ljava/util/List;

    return-void
.end method

.method public setRlcId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->rlcId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->status:Ljava/lang/String;

    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->tel:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->token:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RLCCLIENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMEI Hanhed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImeiHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "<response>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "<pin>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</pin>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRlcId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    const-string v1, "<rlcId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRlcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</rlcId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getOprtId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "<oprtId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getOprtId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</oprtId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_75
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "<status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getDmAddr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    const-string v1, "<dmAddr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getDmAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</dmAddr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ab
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCert()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c6

    const-string v1, "<cert>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</cert>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c6
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getNonceSvr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e1

    const-string v1, "<nonceSvr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getNonceSvr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</nonceSvr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e1
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fc

    const-string v1, "<cmd>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</cmd>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fc
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_117

    const-string v1, "<resultSvr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</resultSvr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_117
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_132

    const-string v1, "<token>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</token>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_132
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14d

    const-string v1, "<requestor>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</requestor>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14d
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_168

    const-string v1, "<tel>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</tel>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_168
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_183

    const-string v1, "<message>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</message>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_183
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImeiHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19e

    const-string v1, "<imeiHash>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImeiHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</imeiHash>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19e
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b9

    const-string v1, "<errorCode>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</errorCode>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b9
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d4

    const-string v1, "<errorDescription>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</errorDescription>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d4
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ef

    const-string v1, "<data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ef
    iget-object v1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->retryIntervalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_219

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRetryIntervalList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ff
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_219

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "<retryIntervalList>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</retryIntervalList>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ff

    :cond_219
    const-string v1, "</response>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
