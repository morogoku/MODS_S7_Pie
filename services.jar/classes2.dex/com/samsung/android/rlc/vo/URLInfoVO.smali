.class public Lcom/samsung/android/rlc/vo/URLInfoVO;
.super Ljava/lang/Object;
.source "URLInfoVO.java"


# instance fields
.field private dmurl:Ljava/lang/String;

.field private dsurl:Ljava/lang/String;

.field private mgurl:Ljava/lang/String;

.field private ospurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dmurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dsurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->mgurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->ospurl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dmurl:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dsurl:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->mgurl:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->ospurl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDmurl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dmurl:Ljava/lang/String;

    return-object v0
.end method

.method public getDsurl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dsurl:Ljava/lang/String;

    return-object v0
.end method

.method public getMgurl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->mgurl:Ljava/lang/String;

    return-object v0
.end method

.method public getOspurl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->ospurl:Ljava/lang/String;

    return-object v0
.end method

.method public setDmurl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dmurl:Ljava/lang/String;

    return-void
.end method

.method public setDsurl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dsurl:Ljava/lang/String;

    return-void
.end method

.method public setMgurl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->mgurl:Ljava/lang/String;

    return-void
.end method

.method public setOspurl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->ospurl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URLInfoVO [dmurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dmurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dsurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dsurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mgurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->mgurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ospurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->ospurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method