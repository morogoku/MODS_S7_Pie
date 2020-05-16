.class public Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
.super Ljava/lang/Object;
.source "DeliveryReportApiRequestVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "DeliveryReportVO"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private deviceType:Ljava/lang/String;
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

.field private messageId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private pushType:Ljava/lang/String;
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

.field private rlcStsCode:Ljava/lang/String;
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

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->messageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->deviceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->pushType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcStsCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public getRlcId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcId:Ljava/lang/String;

    return-object v0
.end method

.method public getRlcStsCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcStsCode:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorDescription:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->pushType:Ljava/lang/String;

    return-void
.end method

.method public setRlcId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcId:Ljava/lang/String;

    return-void
.end method

.method public setRlcStsCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcStsCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<DeliveryReportVO>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "<messageId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</messageId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getRlcId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "<rlcId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getRlcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</rlcId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "<deviceType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</deviceType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getPushType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "<pushType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getPushType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</pushType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_76
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string v1, "<errorCode>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</errorCode>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    const-string v1, "<errorDescription>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</errorDescription>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ac
    const-string v1, "</DeliveryReportVO>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
