.class public Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;
.super Ljava/lang/Object;
.source "ADPContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ADPContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADPContainerBuilder"
.end annotation


# instance fields
.field private mADPPolicy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->mADPPolicy:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add_ADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;
    .registers 3

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->mADPPolicy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createADPContainer()Lcom/android/server/asks/ADPContainer;
    .registers 4

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->mADPPolicy:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->mADPPolicy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1b

    :cond_11
    new-instance v0, Lcom/android/server/asks/ADPContainer;

    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->mADPPolicy:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/server/asks/ADPContainer;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public flush()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->mADPPolicy:Ljava/util/ArrayList;

    return-void
.end method

.method public get_ADPPolicy()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->mADPPolicy:Ljava/util/ArrayList;

    return-object v0
.end method

.method public set_ADPPolicy()Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->mADPPolicy:Ljava/util/ArrayList;

    return-object p0
.end method

.method public set_pkgName(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->pkgName:Ljava/lang/String;

    return-object p0
.end method
