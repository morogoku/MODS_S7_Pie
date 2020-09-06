.class Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockReport"
.end annotation


# instance fields
.field private mTimeStamp:Ljava/lang/String;

.field private mUid:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTimeStamp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isEqual(Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-nez v1, :cond_e

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    :cond_18
    return v0

    :cond_19
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v0

    :cond_2a
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-nez v1, :cond_34

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3e

    :cond_34
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3f

    :cond_3e
    return v0

    :cond_3f
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v0

    :cond_50
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-nez v1, :cond_5a

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_64

    :cond_5a
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_65

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_65

    :cond_64
    return v0

    :cond_65
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    return v0

    :cond_76
    const/4 v0, 0x1

    return v0
.end method
