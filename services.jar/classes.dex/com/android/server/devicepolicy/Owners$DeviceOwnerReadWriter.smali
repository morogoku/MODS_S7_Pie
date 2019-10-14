.class Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;
.super Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceOwnerReadWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/Owners;


# direct methods
.method protected constructor <init>(Lcom/android/server/devicepolicy/Owners;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
    .registers 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p2, v0, :cond_5

    return v1

    :cond_5
    const/4 v2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_100

    goto :goto_4d

    :sswitch_f
    const-string/jumbo v0, "system-update-policy"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x3

    goto :goto_4e

    :sswitch_1a
    const-string/jumbo v0, "freeze-record"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x5

    goto :goto_4e

    :sswitch_25
    const-string v0, "device-owner-context"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    goto :goto_4e

    :sswitch_2f
    const-string v0, "device-owner"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v4

    goto :goto_4e

    :sswitch_39
    const-string v3, "device-initializer"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    goto :goto_4e

    :sswitch_42
    const-string/jumbo v0, "pending-ota-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x4

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v0, v2

    :goto_4e
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_11a

    const-string v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_69
    const-string/jumbo v0, "start"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "end"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_fe

    if-eqz v3, :cond_fe

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v5

    # setter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/Owners;->access$402(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v5

    # setter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/Owners;->access$502(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;
    invoke-static {v4}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;
    invoke-static {v5}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_fe

    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Invalid system update freeze record loaded"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # setter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;
    invoke-static {v4, v2}, Lcom/android/server/devicepolicy/Owners;->access$402(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # setter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;
    invoke-static {v4, v2}, Lcom/android/server/devicepolicy/Owners;->access$502(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    goto :goto_fe

    :pswitch_b1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Landroid/app/admin/SystemUpdateInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v2

    # setter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;
    invoke-static {v0, v2}, Lcom/android/server/devicepolicy/Owners;->access$202(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdateInfo;)Landroid/app/admin/SystemUpdateInfo;

    goto :goto_fe

    :pswitch_bb
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v2

    # setter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;
    invoke-static {v0, v2}, Lcom/android/server/devicepolicy/Owners;->access$102(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy;

    goto :goto_fe

    :pswitch_c5
    goto :goto_fe

    :pswitch_c6
    const-string/jumbo v0, "userId"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_cd
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/Owners;->access$302(Lcom/android/server/devicepolicy/Owners;I)I
    :try_end_d6
    .catch Ljava/lang/NumberFormatException; {:try_start_cd .. :try_end_d6} :catch_d7

    goto :goto_fe

    :catch_d7
    move-exception v2

    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing user-id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    :pswitch_ef
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v2

    # setter for: Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    invoke-static {v0, v2}, Lcom/android/server/devicepolicy/Owners;->access$002(Lcom/android/server/devicepolicy/Owners;Lcom/android/server/devicepolicy/Owners$OwnerInfo;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # setter for: Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I
    invoke-static {v0, v4}, Lcom/android/server/devicepolicy/Owners;->access$302(Lcom/android/server/devicepolicy/Owners;I)I

    nop

    :cond_fe
    :goto_fe
    return v1

    nop

    :sswitch_data_100
    .sparse-switch
        -0x7d4643cb -> :sswitch_42
        -0x7985fa15 -> :sswitch_39
        -0x786d7384 -> :sswitch_2f
        -0x714796a2 -> :sswitch_25
        0x4db6d447 -> :sswitch_1a
        0x6834f798 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_c6
        :pswitch_c5
        :pswitch_bb
        :pswitch_b1
        :pswitch_69
    .end packed-switch
.end method

.method shouldWrite()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method writeInner(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v0

    const-string v2, "device-owner"

    invoke-virtual {v0, p1, v2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string v0, "device-owner-context"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "userId"

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I
    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$300(Lcom/android/server/devicepolicy/Owners;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "device-owner-context"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2e
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "system-update-policy"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/SystemUpdatePolicy;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v0, "system-update-policy"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4b
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0

    const-string/jumbo v2, "pending-ota-info"

    invoke-virtual {v0, p1, v2}, Landroid/app/admin/SystemUpdateInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    :cond_5f
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_ab

    :cond_6f
    const-string/jumbo v0, "freeze-record"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_8d

    const-string/jumbo v0, "start"

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;
    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8d
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_a5

    const-string/jumbo v0, "end"

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    # getter for: Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;
    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a5
    const-string/jumbo v0, "freeze-record"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_ab
    return-void
.end method
