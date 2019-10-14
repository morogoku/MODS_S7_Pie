.class Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.super Ljava/lang/Object;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecFeature"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mOn:Z

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    iput-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isOn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    return v0
.end method

.method public off()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    return-void
.end method

.method public on()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    return-void
.end method
