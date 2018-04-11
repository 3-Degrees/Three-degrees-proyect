class OrganizationMailer < ApplicationMailer
    default from: '"3 Degrees Notifications System" <railsviro@gmail.com>'

    def request_email(request)
    @request = request
    mail(to: @request.project.organization.email, subject: 'Tienes una nueva solicitud para unirse a uno de tus proyectos')
    end
end
