.class Lcom/android/server/nextapp/PkgPredictorService$APPInfo;
.super Ljava/lang/Object;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "APPInfo"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field system:Z

.field final synthetic this$0:Lcom/android/server/nextapp/PkgPredictorService;

.field uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/nextapp/PkgPredictorService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/nextapp/PkgPredictorService;Lcom/android/server/nextapp/PkgPredictorService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;-><init>(Lcom/android/server/nextapp/PkgPredictorService;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/nextapp/PkgPredictorService$APPInfo;->system:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
