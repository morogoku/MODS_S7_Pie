.class Lcom/android/systemui/statusbar/policy/CallbackHandler$9;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setImsIcon(Landroid/graphics/drawable/Drawable;IZLjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$d:Landroid/graphics/drawable/Drawable;

.field final synthetic val$description:Ljava/lang/CharSequence;

.field final synthetic val$subId:I

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Landroid/graphics/drawable/Drawable;IZLjava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;->val$d:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;->val$subId:I

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;->val$visible:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;->val$description:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->access$000(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;->val$d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;->val$subId:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;->val$visible:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$9;->val$description:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setImsIcon(Landroid/graphics/drawable/Drawable;IZLjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method
