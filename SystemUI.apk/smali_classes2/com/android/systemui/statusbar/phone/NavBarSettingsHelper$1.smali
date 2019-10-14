.class Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$1;
.super Landroid/database/ContentObserver;
.source "NavBarSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$000(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-result-object v0

    const-string v1, "NavBarSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$000(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-result-object v0

    const-string v1, "NavBarSettingsHelper"

    const-string v2, "onChange()"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$100(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$100(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->equals(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$100(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$200(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$300(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Landroid/net/Uri;)V

    return-void
.end method
