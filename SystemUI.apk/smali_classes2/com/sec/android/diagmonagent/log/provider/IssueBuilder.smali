.class public Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;
.super Ljava/lang/Object;
.source "IssueBuilder.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mRelayClient:Ljava/lang/String;

.field private mRelayVer:Ljava/lang/String;

.field private mResultCode:Ljava/lang/String;

.field private mUiMode:Z

.field private mWifiOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mUiMode:Z

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mWifiOnly:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mResultCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mEventId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mDescription:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mRelayClient:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mRelayVer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelayClient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mRelayClient:Ljava/lang/String;

    return-object v0
.end method

.method public getRelayClientVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mRelayVer:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mResultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUiMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mUiMode:Z

    return v0
.end method

.method public getWifiOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mWifiOnly:Z

    return v0
.end method

.method public setResultCode(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mResultCode:Ljava/lang/String;

    return-object p0
.end method

.method public setUiMode(Z)Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/IssueBuilder;->mUiMode:Z

    return-object p0
.end method
