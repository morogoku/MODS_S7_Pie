.class public Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
.super Ljava/lang/Object;
.source "DeviceApiRequestVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "request"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private csc:Ljava/lang/String;
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

.field private imei:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private imei2:Ljava/lang/String;
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

.field private imeiHash2:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private model:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private msgId:Ljava/lang/String;
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

.field private resultDev:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
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

.field private token:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private ver:Ljava/lang/String;
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

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->rlcId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->msgId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->oprtId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->data:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->resultDev:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->ver:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->model:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->csc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imeiHash:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imeiHash2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCsc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->csc:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImei2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei2:Ljava/lang/String;

    return-object v0
.end method

.method public getImeiHash()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imeiHash:Ljava/lang/String;

    return-object v0
.end method

.method public getImeiHash2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imeiHash2:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getOprtId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->oprtId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultDev()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->resultDev:Ljava/lang/String;

    return-object v0
.end method

.method public getRlcId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->rlcId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public setCsc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->csc:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->data:Ljava/lang/String;

    return-void
.end method

.method public setDataByte([B)V
    .registers 5

    if-eqz p1, :cond_1a

    :try_start_2
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->data:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_1a

    :catch_11
    move-exception v0

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1b

    :cond_1a
    :goto_1a
    nop

    :goto_1b
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImei2(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imei2:Ljava/lang/String;

    return-void
.end method

.method public setImeiHash(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imeiHash:Ljava/lang/String;

    return-void
.end method

.method public setImeiHash2(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->imeiHash2:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->model:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setOprtId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->oprtId:Ljava/lang/String;

    return-void
.end method

.method public setResultDev(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->resultDev:Ljava/lang/String;

    return-void
.end method

.method public setRlcId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->rlcId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->token:Ljava/lang/String;

    return-void
.end method

.method public setTokenBytes([B)V
    .registers 5

    if-eqz p1, :cond_1a

    :try_start_2
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->token:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_1a

    :catch_11
    move-exception v0

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1b

    :cond_1a
    :goto_1a
    nop

    :goto_1b
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->ver:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<request>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "<imei>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</imei>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImei2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "<imei2>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImei2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</imei2>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImeiHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "<imeiHash>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImeiHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</imeiHash>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImeiHash2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "<imeiHash2>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getImeiHash2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</imeiHash2>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_76
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getRlcId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string v1, "<rlcId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getRlcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</rlcId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    const-string v1, "<msgId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</msgId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ac
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getOprtId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c7

    const-string v1, "<oprtId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getOprtId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</oprtId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c7
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e2

    const-string v1, "<data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e2
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fd

    const-string v1, "<token>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</token>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fd
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_118

    const-string v1, "<ver>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</ver>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_118
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_133

    const-string v1, "<model>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</model>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_133
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getCsc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14e

    const-string v1, "<csc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getCsc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</csc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14e
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getResultDev()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_169

    const-string v1, "<resultDev>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getResultDev()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</resultDev>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_169
    const-string v1, "</request>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
