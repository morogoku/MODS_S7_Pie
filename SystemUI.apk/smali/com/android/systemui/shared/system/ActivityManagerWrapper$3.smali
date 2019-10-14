.class Lcom/android/systemui/shared/system/ActivityManagerWrapper$3;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/ActivityManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$resultCallback:Ljava/util/function/Consumer;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$3;->val$resultCallback:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
