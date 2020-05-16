.class Lcom/android/systemui/util/ShortcutManager$5;
.super Landroid/os/AsyncTask;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/ComponentName;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$th:I


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;ILandroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iput p2, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    iput-object p3, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .locals 8

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "ShortcutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateShortcut : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is disabled from settings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v2}, Lcom/android/systemui/util/ShortcutManager;->access$800(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_1
    if-nez v1, :cond_2

    const-string v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateShortcut : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " activityInfo is null, resolveInfo is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",  return FALSE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3

    :cond_2
    iget-boolean v3, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v3, :cond_3

    const-string v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateShortcut: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/util/ShortcutManager;->access$900(Lcom/android/systemui/util/ShortcutManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is disabled."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/systemui/util/ShortcutManager;->access$800(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-eq v3, v5, :cond_3

    const-string v3, "ShortcutManager"

    const-string v4, "getComponentEnabled ... !COMPONENT_...STATE_ENABLED."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/systemui/util/ShortcutManager;->access$800(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->isHidden(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateShortcut: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/util/ShortcutManager;->access$900(Lcom/android/systemui/util/ShortcutManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is hidden."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object v3, v3, v4

    iput-boolean v5, v3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->enabled:Z

    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v4, v1}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object v3, v3, v4

    iput-object v0, v3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v4}, Lcom/android/systemui/util/ShortcutManager;->access$800(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    const-string v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateShortcut th : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " class : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v5}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager$5;->doInBackground([Landroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iget v1, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    invoke-static {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->access$400(Lcom/android/systemui/util/ShortcutManager;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iget v1, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    invoke-static {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->access$1100(Lcom/android/systemui/util/ShortcutManager;I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
