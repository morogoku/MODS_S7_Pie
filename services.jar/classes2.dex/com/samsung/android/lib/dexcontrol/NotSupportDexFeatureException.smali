.class public Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
.super Ljava/lang/Exception;
.source "NotSupportDexFeatureException.java"


# instance fields
.field private pid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;->pid:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "this is dexcontrol not support"

    return-object v0
.end method
