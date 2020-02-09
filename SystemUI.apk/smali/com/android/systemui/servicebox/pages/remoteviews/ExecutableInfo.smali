.class public Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;
.super Ljava/lang/Object;
.source "ExecutableInfo.java"


# instance fields
.field additionalInfo:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additionalInfo"
    .end annotation
.end field

.field changeCurrentPage:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "changeCurrentPage"
    .end annotation
.end field

.field labelResName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "labelResNameInSetting"
    .end annotation
.end field

.field menuInSetting:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "menuInSetting"
    .end annotation
.end field

.field systemUserOnly:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "systemUserOnly"
    .end annotation
.end field

.field type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%d %s %d %s %s %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->systemUserOnly:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->menuInSetting:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->changeCurrentPage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->labelResName:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->additionalInfo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
