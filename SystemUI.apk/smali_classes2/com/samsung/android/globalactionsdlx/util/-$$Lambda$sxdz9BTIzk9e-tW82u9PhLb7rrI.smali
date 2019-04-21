.class public final synthetic Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$sxdz9BTIzk9e-tW82u9PhLb7rrI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$sxdz9BTIzk9e-tW82u9PhLb7rrI;->f$0:Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$sxdz9BTIzk9e-tW82u9PhLb7rrI;->f$0:Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/util/LockPatternUtilsWrapper;->lockDown()V

    return-void
.end method
